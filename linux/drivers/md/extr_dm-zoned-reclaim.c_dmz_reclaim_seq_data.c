
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmz_reclaim {TYPE_1__* dev; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dm_zone {unsigned int chunk; struct dm_zone* bzone; } ;
struct TYPE_2__ {int zone_nr_blocks; } ;


 int dmz_dev_debug (TYPE_1__*,char*,unsigned int,int ,int ,int ,int ) ;
 int dmz_free_zone (struct dmz_metadata*,struct dm_zone*) ;
 int dmz_id (struct dmz_metadata*,struct dm_zone*) ;
 int dmz_invalidate_blocks (struct dmz_metadata*,struct dm_zone*,int ,int ) ;
 int dmz_lock_flush (struct dmz_metadata*) ;
 int dmz_lock_map (struct dmz_metadata*) ;
 int dmz_map_zone (struct dmz_metadata*,struct dm_zone*,unsigned int) ;
 int dmz_merge_valid_blocks (struct dmz_metadata*,struct dm_zone*,struct dm_zone*,int ) ;
 int dmz_reclaim_copy (struct dmz_reclaim*,struct dm_zone*,struct dm_zone*) ;
 int dmz_unlock_flush (struct dmz_metadata*) ;
 int dmz_unlock_map (struct dmz_metadata*) ;
 int dmz_unlock_zone_reclaim (struct dm_zone*) ;
 int dmz_unmap_zone (struct dmz_metadata*,struct dm_zone*) ;
 int dmz_weight (struct dm_zone*) ;

__attribute__((used)) static int dmz_reclaim_seq_data(struct dmz_reclaim *zrc, struct dm_zone *dzone)
{
 unsigned int chunk = dzone->chunk;
 struct dm_zone *bzone = dzone->bzone;
 struct dmz_metadata *zmd = zrc->metadata;
 int ret = 0;

 dmz_dev_debug(zrc->dev,
        "Chunk %u, move data zone %u (weight %u) to buf zone %u (weight %u)",
        chunk, dmz_id(zmd, dzone), dmz_weight(dzone),
        dmz_id(zmd, bzone), dmz_weight(bzone));


 ret = dmz_reclaim_copy(zrc, dzone, bzone);
 if (ret < 0)
  return ret;

 dmz_lock_flush(zmd);


 ret = dmz_merge_valid_blocks(zmd, dzone, bzone, 0);
 if (ret == 0) {




  dmz_invalidate_blocks(zmd, dzone, 0, zrc->dev->zone_nr_blocks);
  dmz_lock_map(zmd);
  dmz_unmap_zone(zmd, bzone);
  dmz_unmap_zone(zmd, dzone);
  dmz_unlock_zone_reclaim(dzone);
  dmz_free_zone(zmd, dzone);
  dmz_map_zone(zmd, bzone, chunk);
  dmz_unlock_map(zmd);
 }

 dmz_unlock_flush(zmd);

 return ret;
}
