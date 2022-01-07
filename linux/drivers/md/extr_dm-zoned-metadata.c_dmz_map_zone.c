
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int map_seq_list; int map_rnd_list; } ;
struct dm_zone {unsigned int chunk; int link; } ;


 int DMZ_MAP_UNMAPPED ;
 int dmz_id (struct dmz_metadata*,struct dm_zone*) ;
 scalar_t__ dmz_is_rnd (struct dm_zone*) ;
 int dmz_set_chunk_mapping (struct dmz_metadata*,unsigned int,int ,int ) ;
 int list_add_tail (int *,int *) ;

void dmz_map_zone(struct dmz_metadata *zmd, struct dm_zone *dzone,
    unsigned int chunk)
{

 dmz_set_chunk_mapping(zmd, chunk, dmz_id(zmd, dzone),
         DMZ_MAP_UNMAPPED);
 dzone->chunk = chunk;
 if (dmz_is_rnd(dzone))
  list_add_tail(&dzone->link, &zmd->map_rnd_list);
 else
  list_add_tail(&dzone->link, &zmd->map_seq_list);
}
