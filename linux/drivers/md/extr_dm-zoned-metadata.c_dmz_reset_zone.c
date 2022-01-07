
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {struct dmz_dev* dev; } ;
struct dmz_dev {int zone_nr_sectors; int bdev; } ;
struct dm_zone {scalar_t__ wp_block; int flags; } ;


 int DMZ_SEQ_WRITE_ERR ;
 int GFP_NOIO ;
 int blkdev_reset_zones (int ,int ,int ,int ) ;
 int clear_bit (int ,int *) ;
 int dmz_dev_err (struct dmz_dev*,char*,int ,int) ;
 int dmz_id (struct dmz_metadata*,struct dm_zone*) ;
 int dmz_is_empty (struct dm_zone*) ;
 scalar_t__ dmz_is_offline (struct dm_zone*) ;
 scalar_t__ dmz_is_readonly (struct dm_zone*) ;
 scalar_t__ dmz_is_rnd (struct dm_zone*) ;
 scalar_t__ dmz_seq_write_err (struct dm_zone*) ;
 int dmz_start_sect (struct dmz_metadata*,struct dm_zone*) ;

__attribute__((used)) static int dmz_reset_zone(struct dmz_metadata *zmd, struct dm_zone *zone)
{
 int ret;





 if (dmz_is_offline(zone) ||
     dmz_is_readonly(zone) ||
     dmz_is_rnd(zone))
  return 0;

 if (!dmz_is_empty(zone) || dmz_seq_write_err(zone)) {
  struct dmz_dev *dev = zmd->dev;

  ret = blkdev_reset_zones(dev->bdev,
      dmz_start_sect(zmd, zone),
      dev->zone_nr_sectors, GFP_NOIO);
  if (ret) {
   dmz_dev_err(dev, "Reset zone %u failed %d",
        dmz_id(zmd, zone), ret);
   return ret;
  }
 }


 clear_bit(DMZ_SEQ_WRITE_ERR, &zone->flags);
 zone->wp_block = 0;

 return 0;
}
