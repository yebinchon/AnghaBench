
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct rv7xx_power_info {int max_vddc; } ;
struct radeon_device {int dummy; } ;
struct radeon_clock_voltage_dependency_table {size_t count; TYPE_1__* entries; } ;
struct TYPE_2__ {int v; } ;


 int EINVAL ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

__attribute__((used)) static int ni_patch_single_dependency_table_based_on_leakage(struct radeon_device *rdev,
            struct radeon_clock_voltage_dependency_table *table)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 u32 i;

 if (table) {
  for (i = 0; i < table->count; i++) {
   if (0xff01 == table->entries[i].v) {
    if (pi->max_vddc == 0)
     return -EINVAL;
    table->entries[i].v = pi->max_vddc;
   }
  }
 }
 return 0;
}
