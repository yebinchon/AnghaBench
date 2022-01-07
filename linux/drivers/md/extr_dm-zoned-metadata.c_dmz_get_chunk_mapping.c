
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int dev; struct dmz_mblock** map_mblk; } ;
struct dmz_mblock {scalar_t__ data; } ;
struct dmz_map {int dzone_id; } ;
struct dm_zone {unsigned int chunk; int flags; } ;


 int DMZ_ALLOC_RND ;
 unsigned int DMZ_MAP_ENTRIES_MASK ;
 unsigned int DMZ_MAP_ENTRIES_SHIFT ;
 unsigned int DMZ_MAP_UNMAPPED ;
 int DMZ_SEQ_WRITE_ERR ;
 int EIO ;
 struct dm_zone* ERR_PTR (int ) ;
 int REQ_OP_WRITE ;
 int clear_bit (int ,int *) ;
 int dmz_activate_zone (struct dm_zone*) ;
 struct dm_zone* dmz_alloc_zone (struct dmz_metadata*,int ) ;
 scalar_t__ dmz_bdev_is_dying (int ) ;
 struct dm_zone* dmz_get (struct dmz_metadata*,unsigned int) ;
 int dmz_handle_seq_write_err (struct dmz_metadata*,struct dm_zone*) ;
 scalar_t__ dmz_in_reclaim (struct dm_zone*) ;
 int dmz_lock_map (struct dmz_metadata*) ;
 int dmz_lru_zone (struct dmz_metadata*,struct dm_zone*) ;
 int dmz_map_zone (struct dmz_metadata*,struct dm_zone*,unsigned int) ;
 scalar_t__ dmz_seq_write_err (struct dm_zone*) ;
 int dmz_unlock_map (struct dmz_metadata*) ;
 int dmz_wait_for_free_zones (struct dmz_metadata*) ;
 int dmz_wait_for_reclaim (struct dmz_metadata*,struct dm_zone*) ;
 unsigned int le32_to_cpu (int ) ;

struct dm_zone *dmz_get_chunk_mapping(struct dmz_metadata *zmd, unsigned int chunk, int op)
{
 struct dmz_mblock *dmap_mblk = zmd->map_mblk[chunk >> DMZ_MAP_ENTRIES_SHIFT];
 struct dmz_map *dmap = (struct dmz_map *) dmap_mblk->data;
 int dmap_idx = chunk & DMZ_MAP_ENTRIES_MASK;
 unsigned int dzone_id;
 struct dm_zone *dzone = ((void*)0);
 int ret = 0;

 dmz_lock_map(zmd);
again:

 dzone_id = le32_to_cpu(dmap[dmap_idx].dzone_id);
 if (dzone_id == DMZ_MAP_UNMAPPED) {




  if (op != REQ_OP_WRITE)
   goto out;


  dzone = dmz_alloc_zone(zmd, DMZ_ALLOC_RND);
  if (!dzone) {
   if (dmz_bdev_is_dying(zmd->dev)) {
    dzone = ERR_PTR(-EIO);
    goto out;
   }
   dmz_wait_for_free_zones(zmd);
   goto again;
  }

  dmz_map_zone(zmd, dzone, chunk);

 } else {

  dzone = dmz_get(zmd, dzone_id);
  if (dzone->chunk != chunk) {
   dzone = ERR_PTR(-EIO);
   goto out;
  }


  if (dmz_seq_write_err(dzone)) {
   ret = dmz_handle_seq_write_err(zmd, dzone);
   if (ret) {
    dzone = ERR_PTR(-EIO);
    goto out;
   }
   clear_bit(DMZ_SEQ_WRITE_ERR, &dzone->flags);
  }
 }






 if (dmz_in_reclaim(dzone)) {
  dmz_wait_for_reclaim(zmd, dzone);
  goto again;
 }
 dmz_activate_zone(dzone);
 dmz_lru_zone(zmd, dzone);
out:
 dmz_unlock_map(zmd);

 return dzone;
}
