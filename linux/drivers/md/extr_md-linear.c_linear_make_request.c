
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mddev {scalar_t__ gendisk; int bio_set; } ;
struct dev_info {scalar_t__ end_sector; TYPE_3__* rdev; } ;
struct TYPE_5__ {scalar_t__ bi_sector; } ;
struct bio {int bi_opf; TYPE_2__ bi_iter; TYPE_1__* bi_disk; } ;
typedef scalar_t__ sector_t ;
struct TYPE_6__ {scalar_t__ sectors; scalar_t__ data_offset; int bdev; } ;
struct TYPE_4__ {int queue; } ;


 int BDEVNAME_SIZE ;
 int GFP_NOIO ;
 scalar_t__ REQ_OP_DISCARD ;
 int REQ_PREFLUSH ;
 int bdevname (int ,char*) ;
 int bio_chain (struct bio*,struct bio*) ;
 scalar_t__ bio_end_sector (struct bio*) ;
 int bio_endio (struct bio*) ;
 int bio_io_error (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 struct bio* bio_split (struct bio*,scalar_t__,int ,int *) ;
 int blk_queue_discard (int ) ;
 int disk_devt (scalar_t__) ;
 int generic_make_request (struct bio*) ;
 int is_mddev_broken (TYPE_3__*,char*) ;
 int md_flush_request (struct mddev*,struct bio*) ;
 int mddev_check_write_zeroes (struct mddev*,struct bio*) ;
 int mddev_check_writesame (struct mddev*,struct bio*) ;
 int mdname (struct mddev*) ;
 int pr_err (char*,int ,unsigned long long,int ,unsigned long long,unsigned long long) ;
 int trace_block_bio_remap (int ,struct bio*,int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 struct dev_info* which_dev (struct mddev*,scalar_t__) ;

__attribute__((used)) static bool linear_make_request(struct mddev *mddev, struct bio *bio)
{
 char b[BDEVNAME_SIZE];
 struct dev_info *tmp_dev;
 sector_t start_sector, end_sector, data_offset;
 sector_t bio_sector = bio->bi_iter.bi_sector;

 if (unlikely(bio->bi_opf & REQ_PREFLUSH)) {
  md_flush_request(mddev, bio);
  return 1;
 }

 tmp_dev = which_dev(mddev, bio_sector);
 start_sector = tmp_dev->end_sector - tmp_dev->rdev->sectors;
 end_sector = tmp_dev->end_sector;
 data_offset = tmp_dev->rdev->data_offset;

 if (unlikely(bio_sector >= end_sector ||
       bio_sector < start_sector))
  goto out_of_bounds;

 if (unlikely(is_mddev_broken(tmp_dev->rdev, "linear"))) {
  bio_io_error(bio);
  return 1;
 }

 if (unlikely(bio_end_sector(bio) > end_sector)) {

  struct bio *split = bio_split(bio, end_sector - bio_sector,
           GFP_NOIO, &mddev->bio_set);
  bio_chain(split, bio);
  generic_make_request(bio);
  bio = split;
 }

 bio_set_dev(bio, tmp_dev->rdev->bdev);
 bio->bi_iter.bi_sector = bio->bi_iter.bi_sector -
  start_sector + data_offset;

 if (unlikely((bio_op(bio) == REQ_OP_DISCARD) &&
       !blk_queue_discard(bio->bi_disk->queue))) {

  bio_endio(bio);
 } else {
  if (mddev->gendisk)
   trace_block_bio_remap(bio->bi_disk->queue,
           bio, disk_devt(mddev->gendisk),
           bio_sector);
  mddev_check_writesame(mddev, bio);
  mddev_check_write_zeroes(mddev, bio);
  generic_make_request(bio);
 }
 return 1;

out_of_bounds:
 pr_err("md/linear:%s: make_request: Sector %llu out of bounds on dev %s: %llu sectors, offset %llu\n",
        mdname(mddev),
        (unsigned long long)bio->bi_iter.bi_sector,
        bdevname(tmp_dev->rdev->bdev, b),
        (unsigned long long)tmp_dev->rdev->sectors,
        (unsigned long long)start_sector);
 bio_io_error(bio);
 return 1;
}
