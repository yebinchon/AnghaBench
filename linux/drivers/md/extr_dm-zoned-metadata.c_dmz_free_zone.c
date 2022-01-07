
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {scalar_t__ nr_reserved_seq; int free_wq; int unmap_nr_seq; int unmap_seq_list; int nr_reserved_seq_zones; int reserved_seq_zones_list; int unmap_nr_rnd; int unmap_rnd_list; } ;
struct dm_zone {int link; } ;


 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ dmz_is_rnd (struct dm_zone*) ;
 scalar_t__ dmz_is_seq (struct dm_zone*) ;
 int dmz_reset_zone (struct dmz_metadata*,struct dm_zone*) ;
 int list_add_tail (int *,int *) ;
 int wake_up_all (int *) ;

void dmz_free_zone(struct dmz_metadata *zmd, struct dm_zone *zone)
{

 if (dmz_is_seq(zone))
  dmz_reset_zone(zmd, zone);


 if (dmz_is_rnd(zone)) {
  list_add_tail(&zone->link, &zmd->unmap_rnd_list);
  atomic_inc(&zmd->unmap_nr_rnd);
 } else if (atomic_read(&zmd->nr_reserved_seq_zones) <
     zmd->nr_reserved_seq) {
  list_add_tail(&zone->link, &zmd->reserved_seq_zones_list);
  atomic_inc(&zmd->nr_reserved_seq_zones);
 } else {
  list_add_tail(&zone->link, &zmd->unmap_seq_list);
  atomic_inc(&zmd->unmap_nr_seq);
 }

 wake_up_all(&zmd->free_wq);
}
