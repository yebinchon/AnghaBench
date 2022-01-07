
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmz_metadata {TYPE_1__* dev; } ;
struct dm_zone {int wp_block; int flags; } ;
struct blk_zone {scalar_t__ cond; scalar_t__ start; scalar_t__ wp; } ;
struct TYPE_2__ {int bdev; } ;


 scalar_t__ BLK_ZONE_COND_OFFLINE ;
 scalar_t__ BLK_ZONE_COND_READONLY ;
 int DMZ_OFFLINE ;
 int DMZ_READ_ONLY ;
 int EIO ;
 int blkdev_report_zones (int ,int ,struct blk_zone*,unsigned int*) ;
 int clear_bit (int ,int *) ;
 int dmz_dev_err (TYPE_1__*,char*,int ) ;
 int dmz_id (struct dmz_metadata*,struct dm_zone*) ;
 scalar_t__ dmz_is_seq (struct dm_zone*) ;
 int dmz_sect2blk (scalar_t__) ;
 int dmz_start_sect (struct dmz_metadata*,struct dm_zone*) ;
 int memalloc_noio_restore (unsigned int) ;
 unsigned int memalloc_noio_save () ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int dmz_update_zone(struct dmz_metadata *zmd, struct dm_zone *zone)
{
 unsigned int nr_blkz = 1;
 unsigned int noio_flag;
 struct blk_zone blkz;
 int ret;







 noio_flag = memalloc_noio_save();
 ret = blkdev_report_zones(zmd->dev->bdev, dmz_start_sect(zmd, zone),
      &blkz, &nr_blkz);
 memalloc_noio_restore(noio_flag);
 if (!nr_blkz)
  ret = -EIO;
 if (ret) {
  dmz_dev_err(zmd->dev, "Get zone %u report failed",
       dmz_id(zmd, zone));
  return ret;
 }

 clear_bit(DMZ_OFFLINE, &zone->flags);
 clear_bit(DMZ_READ_ONLY, &zone->flags);
 if (blkz.cond == BLK_ZONE_COND_OFFLINE)
  set_bit(DMZ_OFFLINE, &zone->flags);
 else if (blkz.cond == BLK_ZONE_COND_READONLY)
  set_bit(DMZ_READ_ONLY, &zone->flags);

 if (dmz_is_seq(zone))
  zone->wp_block = dmz_sect2blk(blkz.wp - blkz.start);
 else
  zone->wp_block = 0;

 return 0;
}
