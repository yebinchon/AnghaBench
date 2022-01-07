
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dmz_metadata {int dummy; } ;
struct dm_zone {unsigned int chunk; int link; TYPE_1__* bzone; int flags; } ;
struct TYPE_3__ {int * bzone; } ;


 int DMZ_BUF ;
 unsigned int DMZ_MAP_UNMAPPED ;
 scalar_t__ WARN_ON (TYPE_1__*) ;
 unsigned int dmz_id (struct dmz_metadata*,TYPE_1__*) ;
 int dmz_set_chunk_mapping (struct dmz_metadata*,unsigned int,unsigned int,unsigned int) ;
 int list_del_init (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void dmz_unmap_zone(struct dmz_metadata *zmd, struct dm_zone *zone)
{
 unsigned int chunk = zone->chunk;
 unsigned int dzone_id;

 if (chunk == DMZ_MAP_UNMAPPED) {

  return;
 }

 if (test_and_clear_bit(DMZ_BUF, &zone->flags)) {




  dzone_id = dmz_id(zmd, zone->bzone);
  zone->bzone->bzone = ((void*)0);
  zone->bzone = ((void*)0);

 } else {




  if (WARN_ON(zone->bzone)) {
   zone->bzone->bzone = ((void*)0);
   zone->bzone = ((void*)0);
  }
  dzone_id = DMZ_MAP_UNMAPPED;
 }

 dmz_set_chunk_mapping(zmd, chunk, dzone_id, DMZ_MAP_UNMAPPED);

 zone->chunk = DMZ_MAP_UNMAPPED;
 list_del_init(&zone->link);
}
