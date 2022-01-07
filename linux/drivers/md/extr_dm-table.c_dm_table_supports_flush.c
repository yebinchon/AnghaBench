
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {TYPE_1__* type; scalar_t__ flush_supported; int num_flush_bios; } ;
struct dm_table {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* iterate_devices ) (struct dm_target*,int ,void*) ;} ;


 int device_flush_capable ;
 unsigned int dm_table_get_num_targets (struct dm_table*) ;
 struct dm_target* dm_table_get_target (struct dm_table*,unsigned int) ;
 scalar_t__ stub1 (struct dm_target*,int ,void*) ;

__attribute__((used)) static bool dm_table_supports_flush(struct dm_table *t, unsigned long flush)
{
 struct dm_target *ti;
 unsigned i;







 for (i = 0; i < dm_table_get_num_targets(t); i++) {
  ti = dm_table_get_target(t, i);

  if (!ti->num_flush_bios)
   continue;

  if (ti->flush_supported)
   return 1;

  if (ti->type->iterate_devices &&
      ti->type->iterate_devices(ti, device_flush_capable, (void *) flush))
   return 1;
 }

 return 0;
}
