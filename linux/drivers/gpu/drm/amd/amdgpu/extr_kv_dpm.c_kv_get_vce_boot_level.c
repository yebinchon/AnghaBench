
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct amdgpu_vce_clock_voltage_dependency_table {size_t count; TYPE_4__* entries; } ;
struct TYPE_5__ {struct amdgpu_vce_clock_voltage_dependency_table vce_clock_voltage_dependency_table; } ;
struct TYPE_6__ {TYPE_1__ dyn_state; } ;
struct TYPE_7__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;
struct TYPE_8__ {scalar_t__ evclk; } ;



__attribute__((used)) static u8 kv_get_vce_boot_level(struct amdgpu_device *adev, u32 evclk)
{
 u8 i;
 struct amdgpu_vce_clock_voltage_dependency_table *table =
  &adev->pm.dpm.dyn_state.vce_clock_voltage_dependency_table;

 for (i = 0; i < table->count; i++) {
  if (table->entries[i].evclk >= evclk)
   break;
 }

 return i;
}
