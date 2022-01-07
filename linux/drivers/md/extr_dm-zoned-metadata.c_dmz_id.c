
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {struct dm_zone* zones; } ;
struct dm_zone {int dummy; } ;



unsigned int dmz_id(struct dmz_metadata *zmd, struct dm_zone *zone)
{
 return ((unsigned int)(zone - zmd->zones));
}
