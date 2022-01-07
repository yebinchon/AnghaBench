
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct radeon_vce_clock_voltage_dependency_table {scalar_t__ count; TYPE_4__* entries; } ;
struct TYPE_5__ {struct radeon_vce_clock_voltage_dependency_table vce_clock_voltage_dependency_table; } ;
struct TYPE_6__ {TYPE_1__ dyn_state; } ;
struct TYPE_7__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct TYPE_8__ {scalar_t__ evclk; scalar_t__ ecclk; int v; } ;


 int EINVAL ;

__attribute__((used)) static int trinity_get_vce_clock_voltage(struct radeon_device *rdev,
      u32 evclk, u32 ecclk, u16 *voltage)
{
 u32 i;
 int ret = -EINVAL;
 struct radeon_vce_clock_voltage_dependency_table *table =
  &rdev->pm.dpm.dyn_state.vce_clock_voltage_dependency_table;

 if (((evclk == 0) && (ecclk == 0)) ||
     (table && (table->count == 0))) {
  *voltage = 0;
  return 0;
 }

 for (i = 0; i < table->count; i++) {
  if ((evclk <= table->entries[i].evclk) &&
      (ecclk <= table->entries[i].ecclk)) {
   *voltage = table->entries[i].v;
   ret = 0;
   break;
  }
 }


 if (ret)
  *voltage = table->entries[table->count - 1].v;

 return ret;
}
