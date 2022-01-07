
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int region_size; } ;
typedef int sector_t ;



sector_t dm_rh_get_region_size(struct dm_region_hash *rh)
{
 return rh->region_size;
}
