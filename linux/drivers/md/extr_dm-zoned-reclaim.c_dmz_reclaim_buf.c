
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmz_reclaim {TYPE_1__* dev; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dm_zone {int chunk; int wp_block; struct dm_zone* bzone; } ;
typedef int sector_t ;
struct TYPE_2__ {int zone_nr_blocks; } ;


 int dmz_dev_debug (TYPE_1__*,char*,int ,int ,int ,int ,int ) ;
 int dmz_free_zone (struct dmz_metadata*,struct dm_zone*) ;
 int dmz_id (struct dmz_metadata*,struct dm_zone*) ;
 int dmz_invalidate_blocks (struct dmz_metadata*,struct dm_zone*,int ,int ) ;
 int dmz_lock_flush (struct dmz_metadata*) ;
 int dmz_lock_map (struct dmz_metadata*) ;
 int dmz_merge_valid_blocks (struct dmz_metadata*,struct dm_zone*,struct dm_zone*,int ) ;
 int dmz_reclaim_copy (struct dmz_reclaim*,struct dm_zone*,struct dm_zone*) ;
 int dmz_unlock_flush (struct dmz_metadata*) ;
 int dmz_unlock_map (struct dmz_metadata*) ;
 int dmz_unlock_zone_reclaim (struct dm_zone*) ;
 int dmz_unmap_zone (struct dmz_metadata*,struct dm_zone*) ;
 int dmz_weight (struct dm_zone*) ;

__attribute__((used)) static int dmz_reclaim_buf(struct dmz_reclaim *zrc, struct dm_zone *dzone)
{
 struct dm_zone *bzone = dzone->bzone;
 sector_t chunk_block = dzone->wp_block;
 struct dmz_metadata *zmd = zrc->metadata;
 int ret;

 dmz_dev_debug(zrc->dev,
        "Chunk %u, move buf zone %u (weight %u) to data zone %u (weight %u)",
        dzone->chunk, dmz_id(zmd, bzone), dmz_weight(bzone),
        dmz_id(zmd, dzone), dmz_weight(dzone));


 ret = dmz_reclaim_copy(zrc, bzone, dzone);
 if (ret < 0)
  return ret;

 dmz_lock_flush(zmd);


 ret = dmz_merge_valid_blocks(zmd, bzone, dzone, chunk_block);
 if (ret == 0) {

  dmz_invalidate_blocks(zmd, bzone, 0, zrc->dev->zone_nr_blocks);
  dmz_lock_map(zmd);
  dmz_unmap_zone(zmd, bzone);
  dmz_unlock_zone_reclaim(dzone);
  dmz_free_zone(zmd, bzone);
  dmz_unlock_map(zmd);
 }

 dmz_unlock_flush(zmd);

 return ret;
}
