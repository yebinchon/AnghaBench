
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {struct dmz_mblock** map_mblk; } ;
struct dmz_mblock {scalar_t__ data; } ;
struct dmz_map {void* bzone_id; void* dzone_id; } ;


 unsigned int DMZ_MAP_ENTRIES_MASK ;
 unsigned int DMZ_MAP_ENTRIES_SHIFT ;
 void* cpu_to_le32 (unsigned int) ;
 int dmz_dirty_mblock (struct dmz_metadata*,struct dmz_mblock*) ;

__attribute__((used)) static void dmz_set_chunk_mapping(struct dmz_metadata *zmd, unsigned int chunk,
      unsigned int dzone_id, unsigned int bzone_id)
{
 struct dmz_mblock *dmap_mblk = zmd->map_mblk[chunk >> DMZ_MAP_ENTRIES_SHIFT];
 struct dmz_map *dmap = (struct dmz_map *) dmap_mblk->data;
 int map_idx = chunk & DMZ_MAP_ENTRIES_MASK;

 dmap[map_idx].dzone_id = cpu_to_le32(dzone_id);
 dmap[map_idx].bzone_id = cpu_to_le32(bzone_id);
 dmz_dirty_mblock(zmd, dmap_mblk);
}
