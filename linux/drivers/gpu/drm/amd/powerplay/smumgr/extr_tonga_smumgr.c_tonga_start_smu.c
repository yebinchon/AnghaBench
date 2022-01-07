
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int soft_regs_start; } ;
struct tonga_smumgr {TYPE_1__ smu7_data; } ;
struct pp_hwmgr {int device; scalar_t__ not_vf; struct tonga_smumgr* smu_backend; } ;


 int CGS_IND_REG__SMC ;
 scalar_t__ PHM_READ_VFPF_INDIRECT_FIELD (int ,int ,int ,int ) ;
 scalar_t__ SMU72_FIRMWARE_HEADER_LOCATION ;
 int SMU72_Firmware_Header ;
 int SMU_FIRMWARE ;
 int SMU_MODE ;
 int SoftRegisters ;
 scalar_t__ offsetof (int ,int ) ;
 int smu7_is_smc_ram_running (struct pp_hwmgr*) ;
 int smu7_read_smc_sram_dword (struct pp_hwmgr*,scalar_t__,int *,int) ;
 int smu7_request_smu_load_fw (struct pp_hwmgr*) ;
 int tonga_start_in_non_protection_mode (struct pp_hwmgr*) ;
 int tonga_start_in_protection_mode (struct pp_hwmgr*) ;

__attribute__((used)) static int tonga_start_smu(struct pp_hwmgr *hwmgr)
{
 struct tonga_smumgr *priv = hwmgr->smu_backend;
 int result;


 if (!smu7_is_smc_ram_running(hwmgr) && hwmgr->not_vf) {

  if (0 == PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
     SMU_FIRMWARE, SMU_MODE)) {
   result = tonga_start_in_non_protection_mode(hwmgr);
   if (result)
    return result;
  } else {
   result = tonga_start_in_protection_mode(hwmgr);
   if (result)
    return result;
  }
 }




 smu7_read_smc_sram_dword(hwmgr,
   SMU72_FIRMWARE_HEADER_LOCATION +
   offsetof(SMU72_Firmware_Header, SoftRegisters),
   &(priv->smu7_data.soft_regs_start), 0x40000);

 result = smu7_request_smu_load_fw(hwmgr);

 return result;
}
