
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thin_c {TYPE_4__* origin_dev; scalar_t__ dev_id; TYPE_2__* pool_dev; TYPE_5__* pool; int td; } ;
struct dm_target {struct thin_c* private; } ;
typedef int status_type_t ;
typedef int ssize_t ;
typedef int dm_block_t ;
struct TYPE_10__ {int sectors_per_block; } ;
struct TYPE_9__ {TYPE_3__* bdev; } ;
struct TYPE_8__ {int bd_dev; } ;
struct TYPE_7__ {TYPE_1__* bdev; } ;
struct TYPE_6__ {int bd_dev; } ;


 int BDEVNAME_SIZE ;
 int DMEMIT (char*,...) ;
 int DMERR (char*,int) ;
 scalar_t__ PM_FAIL ;


 int dm_thin_get_highest_mapped_block (int ,int*) ;
 int dm_thin_get_mapped_count (int ,int*) ;
 int format_dev_t (char*,int ) ;
 scalar_t__ get_pool_mode (TYPE_5__*) ;

__attribute__((used)) static void thin_status(struct dm_target *ti, status_type_t type,
   unsigned status_flags, char *result, unsigned maxlen)
{
 int r;
 ssize_t sz = 0;
 dm_block_t mapped, highest;
 char buf[BDEVNAME_SIZE];
 struct thin_c *tc = ti->private;

 if (get_pool_mode(tc->pool) == PM_FAIL) {
  DMEMIT("Fail");
  return;
 }

 if (!tc->td)
  DMEMIT("-");
 else {
  switch (type) {
  case 129:
   r = dm_thin_get_mapped_count(tc->td, &mapped);
   if (r) {
    DMERR("dm_thin_get_mapped_count returned %d", r);
    goto err;
   }

   r = dm_thin_get_highest_mapped_block(tc->td, &highest);
   if (r < 0) {
    DMERR("dm_thin_get_highest_mapped_block returned %d", r);
    goto err;
   }

   DMEMIT("%llu ", mapped * tc->pool->sectors_per_block);
   if (r)
    DMEMIT("%llu", ((highest + 1) *
      tc->pool->sectors_per_block) - 1);
   else
    DMEMIT("-");
   break;

  case 128:
   DMEMIT("%s %lu",
          format_dev_t(buf, tc->pool_dev->bdev->bd_dev),
          (unsigned long) tc->dev_id);
   if (tc->origin_dev)
    DMEMIT(" %s", format_dev_t(buf, tc->origin_dev->bdev->bd_dev));
   break;
  }
 }

 return;

err:
 DMEMIT("Error");
}
