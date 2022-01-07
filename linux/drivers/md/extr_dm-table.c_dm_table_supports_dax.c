
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {TYPE_1__* type; } ;
struct dm_table {int dummy; } ;
typedef int iterate_devices_callout_fn ;
struct TYPE_2__ {int (* iterate_devices ) (struct dm_target*,int ,int*) ;int direct_access; } ;


 unsigned int dm_table_get_num_targets (struct dm_table*) ;
 struct dm_target* dm_table_get_target (struct dm_table*,unsigned int) ;
 int stub1 (struct dm_target*,int ,int*) ;

bool dm_table_supports_dax(struct dm_table *t,
      iterate_devices_callout_fn iterate_fn, int *blocksize)
{
 struct dm_target *ti;
 unsigned i;


 for (i = 0; i < dm_table_get_num_targets(t); i++) {
  ti = dm_table_get_target(t, i);

  if (!ti->type->direct_access)
   return 0;

  if (!ti->type->iterate_devices ||
      !ti->type->iterate_devices(ti, iterate_fn, blocksize))
   return 0;
 }

 return 1;
}
