
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strip_zone {scalar_t__ zone_end; unsigned int nb_dev; scalar_t__ dev_start; } ;
struct r0conf {struct strip_zone* strip_zone; struct md_rdev** devlist; } ;
struct mddev {unsigned int chunk_sectors; scalar_t__ gendisk; int bio_set; struct r0conf* private; } ;
struct md_rdev {int bdev; scalar_t__ data_offset; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef unsigned int sector_t ;


 int GFP_NOIO ;
 scalar_t__ __blkdev_issue_discard (int ,scalar_t__,unsigned int,int ,int ,struct bio**) ;
 int bdev_get_queue (int ) ;
 int bio_chain (struct bio*,struct bio*) ;
 int bio_clone_blkg_association (struct bio*,struct bio*) ;
 scalar_t__ bio_end_sector (struct bio*) ;
 int bio_endio (struct bio*) ;
 struct bio* bio_split (struct bio*,scalar_t__,int ,int *) ;
 int disk_devt (scalar_t__) ;
 struct strip_zone* find_zone (struct r0conf*,unsigned int*) ;
 int generic_make_request (struct bio*) ;
 int sector_div (unsigned int,unsigned int) ;
 int trace_block_bio_remap (int ,struct bio*,int ,scalar_t__) ;

__attribute__((used)) static void raid0_handle_discard(struct mddev *mddev, struct bio *bio)
{
 struct r0conf *conf = mddev->private;
 struct strip_zone *zone;
 sector_t start = bio->bi_iter.bi_sector;
 sector_t end;
 unsigned int stripe_size;
 sector_t first_stripe_index, last_stripe_index;
 sector_t start_disk_offset;
 unsigned int start_disk_index;
 sector_t end_disk_offset;
 unsigned int end_disk_index;
 unsigned int disk;

 zone = find_zone(conf, &start);

 if (bio_end_sector(bio) > zone->zone_end) {
  struct bio *split = bio_split(bio,
   zone->zone_end - bio->bi_iter.bi_sector, GFP_NOIO,
   &mddev->bio_set);
  bio_chain(split, bio);
  generic_make_request(bio);
  bio = split;
  end = zone->zone_end;
 } else
  end = bio_end_sector(bio);

 if (zone != conf->strip_zone)
  end = end - zone[-1].zone_end;


 stripe_size = zone->nb_dev * mddev->chunk_sectors;

 first_stripe_index = start;
 sector_div(first_stripe_index, stripe_size);
 last_stripe_index = end;
 sector_div(last_stripe_index, stripe_size);

 start_disk_index = (int)(start - first_stripe_index * stripe_size) /
  mddev->chunk_sectors;
 start_disk_offset = ((int)(start - first_stripe_index * stripe_size) %
  mddev->chunk_sectors) +
  first_stripe_index * mddev->chunk_sectors;
 end_disk_index = (int)(end - last_stripe_index * stripe_size) /
  mddev->chunk_sectors;
 end_disk_offset = ((int)(end - last_stripe_index * stripe_size) %
  mddev->chunk_sectors) +
  last_stripe_index * mddev->chunk_sectors;

 for (disk = 0; disk < zone->nb_dev; disk++) {
  sector_t dev_start, dev_end;
  struct bio *discard_bio = ((void*)0);
  struct md_rdev *rdev;

  if (disk < start_disk_index)
   dev_start = (first_stripe_index + 1) *
    mddev->chunk_sectors;
  else if (disk > start_disk_index)
   dev_start = first_stripe_index * mddev->chunk_sectors;
  else
   dev_start = start_disk_offset;

  if (disk < end_disk_index)
   dev_end = (last_stripe_index + 1) * mddev->chunk_sectors;
  else if (disk > end_disk_index)
   dev_end = last_stripe_index * mddev->chunk_sectors;
  else
   dev_end = end_disk_offset;

  if (dev_end <= dev_start)
   continue;

  rdev = conf->devlist[(zone - conf->strip_zone) *
   conf->strip_zone[0].nb_dev + disk];
  if (__blkdev_issue_discard(rdev->bdev,
   dev_start + zone->dev_start + rdev->data_offset,
   dev_end - dev_start, GFP_NOIO, 0, &discard_bio) ||
      !discard_bio)
   continue;
  bio_chain(discard_bio, bio);
  bio_clone_blkg_association(discard_bio, bio);
  if (mddev->gendisk)
   trace_block_bio_remap(bdev_get_queue(rdev->bdev),
    discard_bio, disk_devt(mddev->gendisk),
    bio->bi_iter.bi_sector);
  generic_make_request(discard_bio);
 }
 bio_endio(bio);
}
