
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {struct dm_zone* zones; } ;
struct dm_zone {int dummy; } ;



__attribute__((used)) static struct dm_zone *dmz_get(struct dmz_metadata *zmd, unsigned int zone_id)
{
 return &zmd->zones[zone_id];
}
