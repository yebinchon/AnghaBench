
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {scalar_t__ len; scalar_t__ begin; } ;
struct blk_zone {scalar_t__ start; scalar_t__ type; scalar_t__ cond; scalar_t__ wp; scalar_t__ len; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ BLK_ZONE_COND_EMPTY ;
 scalar_t__ BLK_ZONE_COND_FULL ;
 scalar_t__ BLK_ZONE_TYPE_CONVENTIONAL ;
 int memset (struct blk_zone*,int ,int) ;

void dm_remap_zone_report(struct dm_target *ti, sector_t start,
     struct blk_zone *zones, unsigned int *nr_zones)
{
 *nr_zones = 0;

}
