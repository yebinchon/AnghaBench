
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct unstripe_c {scalar_t__ physical_start; TYPE_1__* dev; } ;
struct dm_target {struct unstripe_c* private; } ;
struct TYPE_4__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_2__ bi_iter; } ;
struct TYPE_3__ {int bdev; } ;


 int DM_MAPIO_REMAPPED ;
 int bio_set_dev (struct bio*,int ) ;
 scalar_t__ map_to_core (struct dm_target*,struct bio*) ;

__attribute__((used)) static int unstripe_map(struct dm_target *ti, struct bio *bio)
{
 struct unstripe_c *uc = ti->private;

 bio_set_dev(bio, uc->dev->bdev);
 bio->bi_iter.bi_sector = map_to_core(ti, bio) + uc->physical_start;

 return DM_MAPIO_REMAPPED;
}
