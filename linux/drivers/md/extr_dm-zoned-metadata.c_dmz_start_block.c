
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmz_metadata {TYPE_1__* dev; } ;
struct dm_zone {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {int zone_nr_blocks_shift; } ;


 scalar_t__ dmz_id (struct dmz_metadata*,struct dm_zone*) ;

sector_t dmz_start_block(struct dmz_metadata *zmd, struct dm_zone *zone)
{
 return (sector_t)dmz_id(zmd, zone) << zmd->dev->zone_nr_blocks_shift;
}
