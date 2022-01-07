
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int reserved_seq_zones_list; } ;
struct dm_zone {int dummy; } ;


 struct dm_zone* dmz_get_rnd_zone_for_reclaim (struct dmz_metadata*) ;
 struct dm_zone* dmz_get_seq_zone_for_reclaim (struct dmz_metadata*) ;
 int dmz_lock_map (struct dmz_metadata*) ;
 int dmz_unlock_map (struct dmz_metadata*) ;
 scalar_t__ list_empty (int *) ;

struct dm_zone *dmz_get_zone_for_reclaim(struct dmz_metadata *zmd)
{
 struct dm_zone *zone;
 dmz_lock_map(zmd);
 if (list_empty(&zmd->reserved_seq_zones_list))
  zone = dmz_get_seq_zone_for_reclaim(zmd);
 else
  zone = dmz_get_rnd_zone_for_reclaim(zmd);
 dmz_unlock_map(zmd);

 return zone;
}
