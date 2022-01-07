
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int map_rnd_list; int dev; } ;
struct dm_zone {int link; struct dm_zone* bzone; int chunk; int flags; } ;


 int DMZ_ALLOC_RND ;
 int DMZ_BUF ;
 int EIO ;
 struct dm_zone* ERR_PTR (int ) ;
 struct dm_zone* dmz_alloc_zone (struct dmz_metadata*,int ) ;
 scalar_t__ dmz_bdev_is_dying (int ) ;
 int dmz_id (struct dmz_metadata*,struct dm_zone*) ;
 int dmz_lock_map (struct dmz_metadata*) ;
 int dmz_set_chunk_mapping (struct dmz_metadata*,int ,int ,int ) ;
 int dmz_unlock_map (struct dmz_metadata*) ;
 int dmz_wait_for_free_zones (struct dmz_metadata*) ;
 int list_add_tail (int *,int *) ;
 int set_bit (int ,int *) ;

struct dm_zone *dmz_get_chunk_buffer(struct dmz_metadata *zmd,
         struct dm_zone *dzone)
{
 struct dm_zone *bzone;

 dmz_lock_map(zmd);
again:
 bzone = dzone->bzone;
 if (bzone)
  goto out;


 bzone = dmz_alloc_zone(zmd, DMZ_ALLOC_RND);
 if (!bzone) {
  if (dmz_bdev_is_dying(zmd->dev)) {
   bzone = ERR_PTR(-EIO);
   goto out;
  }
  dmz_wait_for_free_zones(zmd);
  goto again;
 }


 dmz_set_chunk_mapping(zmd, dzone->chunk, dmz_id(zmd, dzone),
         dmz_id(zmd, bzone));

 set_bit(DMZ_BUF, &bzone->flags);
 bzone->chunk = dzone->chunk;
 bzone->bzone = dzone;
 dzone->bzone = bzone;
 list_add_tail(&bzone->link, &zmd->map_rnd_list);
out:
 dmz_unlock_map(zmd);

 return bzone;
}
