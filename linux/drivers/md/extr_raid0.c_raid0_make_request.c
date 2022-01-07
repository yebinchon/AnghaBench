
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strip_zone {unsigned int dev_start; } ;
struct r0conf {int layout; } ;
struct mddev {unsigned int chunk_sectors; scalar_t__ gendisk; struct r0conf* private; int bio_set; } ;
struct md_rdev {unsigned int data_offset; int bdev; } ;
struct TYPE_3__ {unsigned int bi_sector; } ;
struct bio {int bi_opf; TYPE_2__* bi_disk; TYPE_1__ bi_iter; } ;
typedef unsigned int sector_t ;
struct TYPE_4__ {int queue; } ;


 int GFP_NOIO ;


 scalar_t__ REQ_OP_DISCARD ;
 int REQ_PREFLUSH ;
 int WARN (char*,int ) ;
 int bio_chain (struct bio*,struct bio*) ;
 int bio_io_error (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 unsigned int bio_sectors (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 struct bio* bio_split (struct bio*,unsigned int,int ,int *) ;
 int disk_devt (scalar_t__) ;
 struct strip_zone* find_zone (struct r0conf*,unsigned int*) ;
 int generic_make_request (struct bio*) ;
 int is_mddev_broken (struct md_rdev*,char*) ;
 int is_power_of_2 (unsigned int) ;
 scalar_t__ likely (int ) ;
 struct md_rdev* map_sector (struct mddev*,struct strip_zone*,unsigned int,unsigned int*) ;
 int md_flush_request (struct mddev*,struct bio*) ;
 int mddev_check_write_zeroes (struct mddev*,struct bio*) ;
 int mddev_check_writesame (struct mddev*,struct bio*) ;
 int mdname (struct mddev*) ;
 int raid0_handle_discard (struct mddev*,struct bio*) ;
 unsigned int sector_div (unsigned int,unsigned int) ;
 int trace_block_bio_remap (int ,struct bio*,int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool raid0_make_request(struct mddev *mddev, struct bio *bio)
{
 struct r0conf *conf = mddev->private;
 struct strip_zone *zone;
 struct md_rdev *tmp_dev;
 sector_t bio_sector;
 sector_t sector;
 sector_t orig_sector;
 unsigned chunk_sects;
 unsigned sectors;

 if (unlikely(bio->bi_opf & REQ_PREFLUSH)) {
  md_flush_request(mddev, bio);
  return 1;
 }

 if (unlikely((bio_op(bio) == REQ_OP_DISCARD))) {
  raid0_handle_discard(mddev, bio);
  return 1;
 }

 bio_sector = bio->bi_iter.bi_sector;
 sector = bio_sector;
 chunk_sects = mddev->chunk_sectors;

 sectors = chunk_sects -
  (likely(is_power_of_2(chunk_sects))
   ? (sector & (chunk_sects-1))
   : sector_div(sector, chunk_sects));


 sector = bio_sector;

 if (sectors < bio_sectors(bio)) {
  struct bio *split = bio_split(bio, sectors, GFP_NOIO,
           &mddev->bio_set);
  bio_chain(split, bio);
  generic_make_request(bio);
  bio = split;
 }

 orig_sector = sector;
 zone = find_zone(mddev->private, &sector);
 switch (conf->layout) {
 case 128:
  tmp_dev = map_sector(mddev, zone, orig_sector, &sector);
  break;
 case 129:
  tmp_dev = map_sector(mddev, zone, sector, &sector);
  break;
 default:
  WARN("md/raid0:%s: Invalid layout\n", mdname(mddev));
  bio_io_error(bio);
  return 1;
 }

 if (unlikely(is_mddev_broken(tmp_dev, "raid0"))) {
  bio_io_error(bio);
  return 1;
 }

 bio_set_dev(bio, tmp_dev->bdev);
 bio->bi_iter.bi_sector = sector + zone->dev_start +
  tmp_dev->data_offset;

 if (mddev->gendisk)
  trace_block_bio_remap(bio->bi_disk->queue, bio,
    disk_devt(mddev->gendisk), bio_sector);
 mddev_check_writesame(mddev, bio);
 mddev_check_write_zeroes(mddev, bio);
 generic_make_request(bio);
 return 1;
}
