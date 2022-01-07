
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_4__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct TYPE_6__ {int ulVoltageLevel; } ;
struct TYPE_5__ {int ulSCLKFreq; int usVoltageLevel; int ucVoltageMode; int ucVoltageType; } ;
typedef TYPE_2__ GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_3 ;
typedef TYPE_3__ GET_EVV_VOLTAGE_INFO_OUTPUT_PARAMETER_V1_3 ;


 int ATOM_GET_VOLTAGE_EVV_VOLTAGE ;
 int COMMAND ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int GetVoltageInfo ;
 int amdgpu_atom_execute_table (int ,int ,int *) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;

int atomctrl_get_voltage_evv_on_sclk_ai(struct pp_hwmgr *hwmgr, uint8_t voltage_type,
    uint32_t sclk, uint16_t virtual_voltage_Id, uint32_t *voltage)
{
 struct amdgpu_device *adev = hwmgr->adev;
 int result;
 GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_3 get_voltage_info_param_space;

 get_voltage_info_param_space.ucVoltageType = voltage_type;
 get_voltage_info_param_space.ucVoltageMode = ATOM_GET_VOLTAGE_EVV_VOLTAGE;
 get_voltage_info_param_space.usVoltageLevel = cpu_to_le16(virtual_voltage_Id);
 get_voltage_info_param_space.ulSCLKFreq = cpu_to_le32(sclk);

 result = amdgpu_atom_execute_table(adev->mode_info.atom_context,
   GetIndexIntoMasterTable(COMMAND, GetVoltageInfo),
   (uint32_t *)&get_voltage_info_param_space);

 *voltage = result ? 0 :
  le32_to_cpu(((GET_EVV_VOLTAGE_INFO_OUTPUT_PARAMETER_V1_3 *)(&get_voltage_info_param_space))->ulVoltageLevel);

 return result;
}
