
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5conf {int bio_split; } ;
struct mddev {unsigned int chunk_sectors; struct r5conf* private; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef unsigned int sector_t ;


 int GFP_NOIO ;
 int bio_chain (struct bio*,struct bio*) ;
 unsigned int bio_sectors (struct bio*) ;
 struct bio* bio_split (struct bio*,unsigned int,int ,int *) ;
 int generic_make_request (struct bio*) ;
 int raid5_read_one_chunk (struct mddev*,struct bio*) ;

__attribute__((used)) static struct bio *chunk_aligned_read(struct mddev *mddev, struct bio *raid_bio)
{
 struct bio *split;
 sector_t sector = raid_bio->bi_iter.bi_sector;
 unsigned chunk_sects = mddev->chunk_sectors;
 unsigned sectors = chunk_sects - (sector & (chunk_sects-1));

 if (sectors < bio_sectors(raid_bio)) {
  struct r5conf *conf = mddev->private;
  split = bio_split(raid_bio, sectors, GFP_NOIO, &conf->bio_split);
  bio_chain(split, raid_bio);
  generic_make_request(raid_bio);
  raid_bio = split;
 }

 if (!raid5_read_one_chunk(mddev, raid_bio))
  return raid_bio;

 return ((void*)0);
}
