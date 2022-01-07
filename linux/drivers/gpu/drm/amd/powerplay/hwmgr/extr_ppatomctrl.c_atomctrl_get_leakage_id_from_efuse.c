
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_4__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct TYPE_6__ {int usVoltageLevel; int ucVoltageMode; } ;
struct TYPE_5__ {int sASICSetVoltage; } ;
typedef TYPE_2__ SET_VOLTAGE_PS_ALLOCATION ;
typedef TYPE_3__ SET_VOLTAGE_PARAMETERS_V1_3 ;


 int ATOM_GET_LEAKAGE_ID ;
 int COMMAND ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SetVoltage ;
 int amdgpu_atom_execute_table (int ,int ,int *) ;

int atomctrl_get_leakage_id_from_efuse(struct pp_hwmgr *hwmgr, uint16_t *virtual_voltage_id)
{
 struct amdgpu_device *adev = hwmgr->adev;
 SET_VOLTAGE_PS_ALLOCATION allocation;
 SET_VOLTAGE_PARAMETERS_V1_3 *voltage_parameters =
   (SET_VOLTAGE_PARAMETERS_V1_3 *)&allocation.sASICSetVoltage;
 int result;

 voltage_parameters->ucVoltageMode = ATOM_GET_LEAKAGE_ID;

 result = amdgpu_atom_execute_table(adev->mode_info.atom_context,
   GetIndexIntoMasterTable(COMMAND, SetVoltage),
   (uint32_t *)voltage_parameters);

 *virtual_voltage_id = voltage_parameters->usVoltageLevel;

 return result;
}
