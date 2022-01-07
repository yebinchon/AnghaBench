
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct metadata_stats {int snap; int era; scalar_t__ total; scalar_t__ used; } ;
struct era {int sectors_per_block; TYPE_4__* origin_dev; TYPE_2__* metadata_dev; } ;
struct dm_target {struct era* private; } ;
typedef int status_type_t ;
typedef int ssize_t ;
struct TYPE_8__ {TYPE_3__* bdev; } ;
struct TYPE_7__ {int bd_dev; } ;
struct TYPE_6__ {TYPE_1__* bdev; } ;
struct TYPE_5__ {int bd_dev; } ;


 int BDEVNAME_SIZE ;
 int DMEMIT (char*,...) ;
 int DM_ERA_METADATA_BLOCK_SIZE ;
 int SECTOR_SHIFT ;


 int SUPERBLOCK_LOCATION ;
 int format_dev_t (char*,int ) ;
 int in_worker1 (struct era*,int ,struct metadata_stats*) ;
 int metadata_get_stats ;

__attribute__((used)) static void era_status(struct dm_target *ti, status_type_t type,
         unsigned status_flags, char *result, unsigned maxlen)
{
 int r;
 struct era *era = ti->private;
 ssize_t sz = 0;
 struct metadata_stats stats;
 char buf[BDEVNAME_SIZE];

 switch (type) {
 case 129:
  r = in_worker1(era, metadata_get_stats, &stats);
  if (r)
   goto err;

  DMEMIT("%u %llu/%llu %u",
         (unsigned) (DM_ERA_METADATA_BLOCK_SIZE >> SECTOR_SHIFT),
         (unsigned long long) stats.used,
         (unsigned long long) stats.total,
         (unsigned) stats.era);

  if (stats.snap != SUPERBLOCK_LOCATION)
   DMEMIT(" %llu", stats.snap);
  else
   DMEMIT(" -");
  break;

 case 128:
  format_dev_t(buf, era->metadata_dev->bdev->bd_dev);
  DMEMIT("%s ", buf);
  format_dev_t(buf, era->origin_dev->bdev->bd_dev);
  DMEMIT("%s %u", buf, era->sectors_per_block);
  break;
 }

 return;

err:
 DMEMIT("Error");
}
