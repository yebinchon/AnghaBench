
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_reclaim {int dev; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dm_zone {scalar_t__ wp_block; struct dm_zone* bzone; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ IS_ERR (struct dm_zone*) ;
 int PTR_ERR (struct dm_zone*) ;
 int dmz_dev_debug (int ,char*,int ,int) ;
 int dmz_first_valid_block (struct dmz_metadata*,struct dm_zone*,scalar_t__*) ;
 int dmz_flush_metadata (struct dmz_metadata*) ;
 struct dm_zone* dmz_get_zone_for_reclaim (struct dmz_metadata*) ;
 int dmz_id (struct dmz_metadata*,struct dm_zone*) ;
 scalar_t__ dmz_is_rnd (struct dm_zone*) ;
 int dmz_reclaim_buf (struct dmz_reclaim*,struct dm_zone*) ;
 int dmz_reclaim_empty (struct dmz_reclaim*,struct dm_zone*) ;
 int dmz_reclaim_rnd_data (struct dmz_reclaim*,struct dm_zone*) ;
 int dmz_reclaim_seq_data (struct dmz_reclaim*,struct dm_zone*) ;
 int dmz_unlock_zone_reclaim (struct dm_zone*) ;
 int dmz_weight (struct dm_zone*) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;

__attribute__((used)) static int dmz_do_reclaim(struct dmz_reclaim *zrc)
{
 struct dmz_metadata *zmd = zrc->metadata;
 struct dm_zone *dzone;
 struct dm_zone *rzone;
 unsigned long start;
 int ret;


 dzone = dmz_get_zone_for_reclaim(zmd);
 if (IS_ERR(dzone))
  return PTR_ERR(dzone);

 start = jiffies;

 if (dmz_is_rnd(dzone)) {
  if (!dmz_weight(dzone)) {

   dmz_reclaim_empty(zrc, dzone);
   ret = 0;
  } else {




   ret = dmz_reclaim_rnd_data(zrc, dzone);
  }
  rzone = dzone;

 } else {
  struct dm_zone *bzone = dzone->bzone;
  sector_t chunk_block = 0;

  ret = dmz_first_valid_block(zmd, bzone, &chunk_block);
  if (ret < 0)
   goto out;

  if (ret == 0 || chunk_block >= dzone->wp_block) {




   ret = dmz_reclaim_buf(zrc, dzone);
   rzone = bzone;
  } else {





   ret = dmz_reclaim_seq_data(zrc, dzone);
   rzone = dzone;
  }
 }
out:
 if (ret) {
  dmz_unlock_zone_reclaim(dzone);
  return ret;
 }

 ret = dmz_flush_metadata(zrc->metadata);
 if (ret) {
  dmz_dev_debug(zrc->dev,
         "Metadata flush for zone %u failed, err %d\n",
         dmz_id(zmd, rzone), ret);
  return ret;
 }

 dmz_dev_debug(zrc->dev, "Reclaimed zone %u in %u ms",
        dmz_id(zmd, rzone), jiffies_to_msecs(jiffies - start));
 return 0;
}
