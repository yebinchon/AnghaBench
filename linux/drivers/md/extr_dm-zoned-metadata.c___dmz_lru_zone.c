
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int map_rnd_list; int map_seq_list; } ;
struct dm_zone {int link; } ;


 scalar_t__ dmz_is_seq (struct dm_zone*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static void __dmz_lru_zone(struct dmz_metadata *zmd, struct dm_zone *zone)
{
 if (list_empty(&zone->link))
  return;

 list_del_init(&zone->link);
 if (dmz_is_seq(zone)) {

  list_add_tail(&zone->link, &zmd->map_seq_list);
 } else {

  list_add_tail(&zone->link, &zmd->map_rnd_list);
 }
}
