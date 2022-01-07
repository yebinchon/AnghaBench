
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int dummy; } ;
struct dm_zone {struct dm_zone* bzone; } ;


 int __dmz_lru_zone (struct dmz_metadata*,struct dm_zone*) ;

__attribute__((used)) static void dmz_lru_zone(struct dmz_metadata *zmd, struct dm_zone *zone)
{
 __dmz_lru_zone(zmd, zone);
 if (zone->bzone)
  __dmz_lru_zone(zmd, zone->bzone);
}
