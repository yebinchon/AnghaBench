
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct flakey_c {TYPE_1__* dev; } ;
struct dm_target {struct flakey_c* private; } ;
struct TYPE_4__ {int bi_sector; } ;
struct bio {TYPE_2__ bi_iter; } ;
struct TYPE_3__ {int bdev; } ;


 scalar_t__ REQ_OP_ZONE_RESET ;
 scalar_t__ bio_op (struct bio*) ;
 scalar_t__ bio_sectors (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int flakey_map_sector (struct dm_target*,int ) ;

__attribute__((used)) static void flakey_map_bio(struct dm_target *ti, struct bio *bio)
{
 struct flakey_c *fc = ti->private;

 bio_set_dev(bio, fc->dev->bdev);
 if (bio_sectors(bio) || bio_op(bio) == REQ_OP_ZONE_RESET)
  bio->bi_iter.bi_sector =
   flakey_map_sector(ti, bio->bi_iter.bi_sector);
}
