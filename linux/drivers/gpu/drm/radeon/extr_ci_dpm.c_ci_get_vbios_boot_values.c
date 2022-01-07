
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct radeon_mode_info {TYPE_2__* atom_context; } ;
struct radeon_device {struct radeon_mode_info mode_info; } ;
struct ci_vbios_boot_state {void* mclk_bootup_value; void* sclk_bootup_value; int pcie_lane_bootup_value; int pcie_gen_bootup_value; void* vddci_bootup_value; void* vddc_bootup_value; void* mvdd_bootup_value; } ;
struct TYPE_4__ {scalar_t__ bios; } ;
struct TYPE_3__ {int ulDefaultMemoryClock; int ulDefaultEngineClock; int usBootUpVDDCIVoltage; int usBootUpVDDCVoltage; int usBootUpMVDDCVoltage; } ;
typedef TYPE_1__ ATOM_FIRMWARE_INFO_V2_2 ;


 int DATA ;
 int EINVAL ;
 int FirmwareInfo ;
 int GetIndexIntoMasterTable (int ,int ) ;
 scalar_t__ atom_parse_data_header (TYPE_2__*,int,int *,int *,int *,scalar_t__*) ;
 int ci_get_current_pcie_lane_number (struct radeon_device*) ;
 int ci_get_current_pcie_speed (struct radeon_device*) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static int ci_get_vbios_boot_values(struct radeon_device *rdev,
        struct ci_vbios_boot_state *boot_state)
{
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 int index = GetIndexIntoMasterTable(DATA, FirmwareInfo);
 ATOM_FIRMWARE_INFO_V2_2 *firmware_info;
 u8 frev, crev;
 u16 data_offset;

 if (atom_parse_data_header(mode_info->atom_context, index, ((void*)0),
       &frev, &crev, &data_offset)) {
  firmware_info =
   (ATOM_FIRMWARE_INFO_V2_2 *)(mode_info->atom_context->bios +
          data_offset);
  boot_state->mvdd_bootup_value = le16_to_cpu(firmware_info->usBootUpMVDDCVoltage);
  boot_state->vddc_bootup_value = le16_to_cpu(firmware_info->usBootUpVDDCVoltage);
  boot_state->vddci_bootup_value = le16_to_cpu(firmware_info->usBootUpVDDCIVoltage);
  boot_state->pcie_gen_bootup_value = ci_get_current_pcie_speed(rdev);
  boot_state->pcie_lane_bootup_value = ci_get_current_pcie_lane_number(rdev);
  boot_state->sclk_bootup_value = le32_to_cpu(firmware_info->ulDefaultEngineClock);
  boot_state->mclk_bootup_value = le32_to_cpu(firmware_info->ulDefaultMemoryClock);

  return 0;
 }
 return -EINVAL;
}
