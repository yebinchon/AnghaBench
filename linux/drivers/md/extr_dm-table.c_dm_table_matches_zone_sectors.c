
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {TYPE_1__* type; } ;
struct dm_table {int dummy; } ;
struct TYPE_2__ {int (* iterate_devices ) (struct dm_target*,int ,unsigned int*) ;} ;


 int device_matches_zone_sectors ;
 unsigned int dm_table_get_num_targets (struct dm_table*) ;
 struct dm_target* dm_table_get_target (struct dm_table*,unsigned int) ;
 int stub1 (struct dm_target*,int ,unsigned int*) ;

__attribute__((used)) static bool dm_table_matches_zone_sectors(struct dm_table *t,
       unsigned int zone_sectors)
{
 struct dm_target *ti;
 unsigned i;

 for (i = 0; i < dm_table_get_num_targets(t); i++) {
  ti = dm_table_get_target(t, i);

  if (!ti->type->iterate_devices ||
      !ti->type->iterate_devices(ti, device_matches_zone_sectors, &zone_sectors))
   return 0;
 }

 return 1;
}
