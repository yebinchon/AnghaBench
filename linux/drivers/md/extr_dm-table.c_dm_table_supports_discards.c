
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {TYPE_1__* type; int discards_supported; int num_discard_bios; } ;
struct dm_table {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* iterate_devices ) (struct dm_target*,int ,int *) ;} ;


 int device_not_discard_capable ;
 unsigned int dm_table_get_num_targets (struct dm_table*) ;
 struct dm_target* dm_table_get_target (struct dm_table*,unsigned int) ;
 scalar_t__ stub1 (struct dm_target*,int ,int *) ;

__attribute__((used)) static bool dm_table_supports_discards(struct dm_table *t)
{
 struct dm_target *ti;
 unsigned i;

 for (i = 0; i < dm_table_get_num_targets(t); i++) {
  ti = dm_table_get_target(t, i);

  if (!ti->num_discard_bios)
   return 0;






  if (!ti->discards_supported &&
      (!ti->type->iterate_devices ||
       ti->type->iterate_devices(ti, device_not_discard_capable, ((void*)0))))
   return 0;
 }

 return 1;
}
