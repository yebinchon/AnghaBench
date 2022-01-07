
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct amdgpu_vce_clock_voltage_dependency_table {int count; TYPE_5__* entries; } ;
struct amdgpu_uvd_clock_voltage_dependency_table {int count; TYPE_4__* entries; } ;
struct amdgpu_clock_voltage_dependency_table {int count; TYPE_6__* entries; } ;
struct TYPE_7__ {struct amdgpu_clock_voltage_dependency_table acp_clock_voltage_dependency_table; struct amdgpu_clock_voltage_dependency_table samu_clock_voltage_dependency_table; struct amdgpu_vce_clock_voltage_dependency_table vce_clock_voltage_dependency_table; struct amdgpu_uvd_clock_voltage_dependency_table uvd_clock_voltage_dependency_table; } ;
struct TYPE_8__ {TYPE_1__ dyn_state; } ;
struct TYPE_9__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;
struct TYPE_12__ {void* v; } ;
struct TYPE_11__ {void* v; } ;
struct TYPE_10__ {void* v; } ;


 void* kv_convert_8bit_index_to_voltage (struct amdgpu_device*,void*) ;

__attribute__((used)) static void kv_patch_voltage_values(struct amdgpu_device *adev)
{
 int i;
 struct amdgpu_uvd_clock_voltage_dependency_table *uvd_table =
  &adev->pm.dpm.dyn_state.uvd_clock_voltage_dependency_table;
 struct amdgpu_vce_clock_voltage_dependency_table *vce_table =
  &adev->pm.dpm.dyn_state.vce_clock_voltage_dependency_table;
 struct amdgpu_clock_voltage_dependency_table *samu_table =
  &adev->pm.dpm.dyn_state.samu_clock_voltage_dependency_table;
 struct amdgpu_clock_voltage_dependency_table *acp_table =
  &adev->pm.dpm.dyn_state.acp_clock_voltage_dependency_table;

 if (uvd_table->count) {
  for (i = 0; i < uvd_table->count; i++)
   uvd_table->entries[i].v =
    kv_convert_8bit_index_to_voltage(adev,
         uvd_table->entries[i].v);
 }

 if (vce_table->count) {
  for (i = 0; i < vce_table->count; i++)
   vce_table->entries[i].v =
    kv_convert_8bit_index_to_voltage(adev,
         vce_table->entries[i].v);
 }

 if (samu_table->count) {
  for (i = 0; i < samu_table->count; i++)
   samu_table->entries[i].v =
    kv_convert_8bit_index_to_voltage(adev,
         samu_table->entries[i].v);
 }

 if (acp_table->count) {
  for (i = 0; i < acp_table->count; i++)
   acp_table->entries[i].v =
    kv_convert_8bit_index_to_voltage(adev,
         acp_table->entries[i].v);
 }

}
