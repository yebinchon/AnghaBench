
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int region_shift; } ;
typedef int sector_t ;
typedef int region_t ;



sector_t dm_rh_region_to_sector(struct dm_region_hash *rh, region_t region)
{
 return region << rh->region_shift;
}
