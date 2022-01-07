
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {int avfs_supported; int device; scalar_t__ not_vf; scalar_t__ smu_backend; } ;
struct TYPE_2__ {int soft_regs_start; } ;
struct fiji_smumgr {TYPE_1__ smu7_data; } ;


 int CGS_IND_REG__SMC ;
 scalar_t__ PHM_READ_VFPF_INDIRECT_FIELD (int ,int ,int ,int ) ;
 int SMU73_Firmware_Header ;
 scalar_t__ SMU7_FIRMWARE_HEADER_LOCATION ;
 int SMU_FIRMWARE ;
 int SMU_MODE ;
 int SoftRegisters ;
 scalar_t__ fiji_avfs_event_mgr (struct pp_hwmgr*) ;
 int fiji_start_smu_in_non_protection_mode (struct pp_hwmgr*) ;
 int fiji_start_smu_in_protection_mode (struct pp_hwmgr*) ;
 scalar_t__ offsetof (int ,int ) ;
 int smu7_is_smc_ram_running (struct pp_hwmgr*) ;
 int smu7_read_smc_sram_dword (struct pp_hwmgr*,scalar_t__,int *,int) ;
 int smu7_request_smu_load_fw (struct pp_hwmgr*) ;

__attribute__((used)) static int fiji_start_smu(struct pp_hwmgr *hwmgr)
{
 int result = 0;
 struct fiji_smumgr *priv = (struct fiji_smumgr *)(hwmgr->smu_backend);


 if (!smu7_is_smc_ram_running(hwmgr) && hwmgr->not_vf) {

  if (0 == PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device,
    CGS_IND_REG__SMC,
    SMU_FIRMWARE, SMU_MODE)) {
   result = fiji_start_smu_in_non_protection_mode(hwmgr);
   if (result)
    return result;
  } else {
   result = fiji_start_smu_in_protection_mode(hwmgr);
   if (result)
    return result;
  }
  if (fiji_avfs_event_mgr(hwmgr))
   hwmgr->avfs_supported = 0;
 }




 smu7_read_smc_sram_dword(hwmgr,
   SMU7_FIRMWARE_HEADER_LOCATION +
   offsetof(SMU73_Firmware_Header, SoftRegisters),
   &(priv->smu7_data.soft_regs_start), 0x40000);

 result = smu7_request_smu_load_fw(hwmgr);

 return result;
}
