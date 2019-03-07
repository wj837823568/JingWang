# What posts has player users posted in 2018?
select * from assign2.fans where year(date) > 2018;

# What’s the lastest post of player user?
select username from assign2.players order by date limit 1;

# Which post get the most likes for fans user?
select owner_username, url from assign2.fans order by likes limit 1;

# What posts get more than 5 retweets of player user?
select * from assign2.players where retweet > 5;

# Which team user gets most favorites in total?
select username, sum(favorite) from assign2.teams group by username limit 1;

# What posts of team user get more than 10 retweets and less than 50 favorites?
select username, content from assign2.teams where retweet > 10 and favorite < 50;

# Rank the posts of fans user according to the number of comments from the least to the most.
select * from assign2.fans order by comments;

# Which team is interested in champion
select * from assign2.teams where content like '%champion%';

# which player postes least posts this year?
select username, count(*) sum from assign2.players where year(date) > 2018 order by sum limit 1;

# Rank the posts of fans user according to the number of likes from the most to the least.
select * from assign2.fans order by likes desc;