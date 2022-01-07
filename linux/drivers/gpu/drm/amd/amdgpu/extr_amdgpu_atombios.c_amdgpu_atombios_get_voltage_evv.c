
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int usVoltageLevel; } ;
struct TYPE_9__ {int ulSCLKFreq; int usVoltageLevel; int ucVoltageMode; int ucVoltageType; } ;
union get_voltage_info {TYPE_8__ evv_out; TYPE_1__ in; } ;
typedef int uint32_t ;
typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct TYPE_15__ {int atom_context; } ;
struct TYPE_11__ {size_t count; TYPE_2__* entries; } ;
struct TYPE_12__ {TYPE_3__ vddc_dependency_on_sclk; } ;
struct TYPE_13__ {TYPE_4__ dyn_state; } ;
struct TYPE_14__ {TYPE_5__ dpm; } ;
struct amdgpu_device {TYPE_7__ mode_info; TYPE_6__ pm; } ;
struct TYPE_10__ {scalar_t__ v; int clk; } ;


 int ATOM_GET_VOLTAGE_EVV_VOLTAGE ;
 int COMMAND ;
 int EINVAL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int GetVoltageInfo ;
 int VOLTAGE_TYPE_VDDC ;
 int amdgpu_atom_execute_table (int ,int,int *) ;
 int cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ le16_to_cpu (int ) ;

int amdgpu_atombios_get_voltage_evv(struct amdgpu_device *adev,
        u16 virtual_voltage_id,
        u16 *voltage)
{
 int index = GetIndexIntoMasterTable(COMMAND, GetVoltageInfo);
 u32 entry_id;
 u32 count = adev->pm.dpm.dyn_state.vddc_dependency_on_sclk.count;
 union get_voltage_info args;

 for (entry_id = 0; entry_id < count; entry_id++) {
  if (adev->pm.dpm.dyn_state.vddc_dependency_on_sclk.entries[entry_id].v ==
      virtual_voltage_id)
   break;
 }

 if (entry_id >= count)
  return -EINVAL;

 args.in.ucVoltageType = VOLTAGE_TYPE_VDDC;
 args.in.ucVoltageMode = ATOM_GET_VOLTAGE_EVV_VOLTAGE;
 args.in.usVoltageLevel = cpu_to_le16(virtual_voltage_id);
 args.in.ulSCLKFreq =
  cpu_to_le32(adev->pm.dpm.dyn_state.vddc_dependency_on_sclk.entries[entry_id].clk);

 amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);

 *voltage = le16_to_cpu(args.evv_out.usVoltageLevel);

 return 0;
}
