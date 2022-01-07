
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dust_device {int fail_read_on_bb; scalar_t__ start; TYPE_1__* dev; } ;
struct dm_target {struct dust_device* private; } ;
struct TYPE_4__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_2__ bi_iter; } ;
struct TYPE_3__ {int bdev; } ;


 scalar_t__ READ ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 scalar_t__ dm_target_offset (struct dm_target*,scalar_t__) ;
 int dust_map_read (struct dust_device*,scalar_t__,int ) ;
 int dust_map_write (struct dust_device*,scalar_t__,int ) ;

__attribute__((used)) static int dust_map(struct dm_target *ti, struct bio *bio)
{
 struct dust_device *dd = ti->private;
 int ret;

 bio_set_dev(bio, dd->dev->bdev);
 bio->bi_iter.bi_sector = dd->start + dm_target_offset(ti, bio->bi_iter.bi_sector);

 if (bio_data_dir(bio) == READ)
  ret = dust_map_read(dd, bio->bi_iter.bi_sector, dd->fail_read_on_bb);
 else
  ret = dust_map_write(dd, bio->bi_iter.bi_sector, dd->fail_read_on_bb);

 return ret;
}
