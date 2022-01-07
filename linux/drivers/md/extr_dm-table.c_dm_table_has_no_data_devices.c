
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {TYPE_1__* type; } ;
struct dm_table {int dummy; } ;
struct TYPE_2__ {int (* iterate_devices ) (struct dm_target*,int ,unsigned int*) ;} ;


 int count_device ;
 unsigned int dm_table_get_num_targets (struct dm_table*) ;
 struct dm_target* dm_table_get_target (struct dm_table*,unsigned int) ;
 int stub1 (struct dm_target*,int ,unsigned int*) ;

bool dm_table_has_no_data_devices(struct dm_table *table)
{
 struct dm_target *ti;
 unsigned i, num_devices;

 for (i = 0; i < dm_table_get_num_targets(table); i++) {
  ti = dm_table_get_target(table, i);

  if (!ti->type->iterate_devices)
   return 0;

  num_devices = 0;
  ti->type->iterate_devices(ti, count_device, &num_devices);
  if (num_devices)
   return 0;
 }

 return 1;
}
