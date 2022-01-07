
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct log_writes_c {TYPE_1__* dev; } ;
struct dm_target {struct log_writes_c* private; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int bdev; } ;


 int bio_set_dev (struct bio*,int ) ;

__attribute__((used)) static void normal_map_bio(struct dm_target *ti, struct bio *bio)
{
 struct log_writes_c *lc = ti->private;

 bio_set_dev(bio, lc->dev->bdev);
}
