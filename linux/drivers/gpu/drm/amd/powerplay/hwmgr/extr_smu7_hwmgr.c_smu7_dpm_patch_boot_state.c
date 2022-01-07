
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct smu7_power_state {TYPE_1__* performance_levels; } ;
struct TYPE_5__ {scalar_t__ pcie_lane_bootup_value; int pcie_gen_bootup_value; void* sclk_bootup_value; void* mclk_bootup_value; void* vddci_bootup_value; void* vddc_bootup_value; void* mvdd_bootup_value; } ;
struct smu7_hwmgr {TYPE_2__ vbios_boot_state; } ;
struct pp_hwmgr {int adev; scalar_t__ backend; } ;
struct pp_hw_power_state {int dummy; } ;
struct TYPE_6__ {int usBootUpVDDCIVoltage; int usBootUpVDDCVoltage; int usBootUpMVDDCVoltage; int ulDefaultMemoryClock; int ulDefaultEngineClock; } ;
struct TYPE_4__ {scalar_t__ pcie_lane; int pcie_gen; void* engine_clock; void* memory_clock; } ;
typedef TYPE_3__ ATOM_FIRMWARE_INFO_V2_2 ;


 int DATA ;
 int FirmwareInfo ;
 int GetIndexIntoMasterTable (int ,int ) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 scalar_t__ smu7_get_current_pcie_lane_number (struct pp_hwmgr*) ;
 int smu7_get_current_pcie_speed (struct pp_hwmgr*) ;
 scalar_t__ smu_atom_get_data_table (int ,int,scalar_t__*,int *,int *) ;

__attribute__((used)) static int smu7_dpm_patch_boot_state(struct pp_hwmgr *hwmgr,
     struct pp_hw_power_state *hw_ps)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 struct smu7_power_state *ps = (struct smu7_power_state *)hw_ps;
 ATOM_FIRMWARE_INFO_V2_2 *fw_info;
 uint16_t size;
 uint8_t frev, crev;
 int index = GetIndexIntoMasterTable(DATA, FirmwareInfo);




 fw_info = (ATOM_FIRMWARE_INFO_V2_2 *)smu_atom_get_data_table(hwmgr->adev, index,
   &size, &frev, &crev);
 if (!fw_info)

  return 0;


 data->vbios_boot_state.sclk_bootup_value =
   le32_to_cpu(fw_info->ulDefaultEngineClock);
 data->vbios_boot_state.mclk_bootup_value =
   le32_to_cpu(fw_info->ulDefaultMemoryClock);
 data->vbios_boot_state.mvdd_bootup_value =
   le16_to_cpu(fw_info->usBootUpMVDDCVoltage);
 data->vbios_boot_state.vddc_bootup_value =
   le16_to_cpu(fw_info->usBootUpVDDCVoltage);
 data->vbios_boot_state.vddci_bootup_value =
   le16_to_cpu(fw_info->usBootUpVDDCIVoltage);
 data->vbios_boot_state.pcie_gen_bootup_value =
   smu7_get_current_pcie_speed(hwmgr);

 data->vbios_boot_state.pcie_lane_bootup_value =
   (uint16_t)smu7_get_current_pcie_lane_number(hwmgr);


 ps->performance_levels[0].memory_clock = data->vbios_boot_state.mclk_bootup_value;
 ps->performance_levels[0].engine_clock = data->vbios_boot_state.sclk_bootup_value;
 ps->performance_levels[0].pcie_gen = data->vbios_boot_state.pcie_gen_bootup_value;
 ps->performance_levels[0].pcie_lane = data->vbios_boot_state.pcie_lane_bootup_value;

 return 0;
}
