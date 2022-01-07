
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_target {struct dm_origin* private; } ;
struct dm_origin {unsigned int split_boundary; TYPE_2__* dev; } ;
struct TYPE_3__ {scalar_t__ bi_sector; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; } ;
struct TYPE_4__ {int bdev; } ;


 int DM_MAPIO_REMAPPED ;
 int REQ_PREFLUSH ;
 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 unsigned int bio_sectors (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int dm_accept_partial_bio (struct bio*,unsigned int) ;
 int do_origin (TYPE_2__*,struct bio*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int origin_map(struct dm_target *ti, struct bio *bio)
{
 struct dm_origin *o = ti->private;
 unsigned available_sectors;

 bio_set_dev(bio, o->dev->bdev);

 if (unlikely(bio->bi_opf & REQ_PREFLUSH))
  return DM_MAPIO_REMAPPED;

 if (bio_data_dir(bio) != WRITE)
  return DM_MAPIO_REMAPPED;

 available_sectors = o->split_boundary -
  ((unsigned)bio->bi_iter.bi_sector & (o->split_boundary - 1));

 if (bio_sectors(bio) > available_sectors)
  dm_accept_partial_bio(bio, available_sectors);


 return do_origin(o->dev, bio, 1);
}
