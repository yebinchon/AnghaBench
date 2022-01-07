
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {struct iceland_smumgr* smu_backend; } ;
struct TYPE_2__ {int soft_regs_start; } ;
struct iceland_smumgr {TYPE_1__ smu7_data; } ;


 scalar_t__ SMU71_FIRMWARE_HEADER_LOCATION ;
 int SMU71_Firmware_Header ;
 int SoftRegisters ;
 int iceland_smu_start_smc (struct pp_hwmgr*) ;
 int iceland_smu_upload_firmware_image (struct pp_hwmgr*) ;
 scalar_t__ offsetof (int ,int ) ;
 int smu7_is_smc_ram_running (struct pp_hwmgr*) ;
 int smu7_read_smc_sram_dword (struct pp_hwmgr*,scalar_t__,int *,int) ;
 int smu7_request_smu_load_fw (struct pp_hwmgr*) ;

__attribute__((used)) static int iceland_start_smu(struct pp_hwmgr *hwmgr)
{
 struct iceland_smumgr *priv = hwmgr->smu_backend;
 int result;

 if (!smu7_is_smc_ram_running(hwmgr)) {
  result = iceland_smu_upload_firmware_image(hwmgr);
  if (result)
   return result;

  iceland_smu_start_smc(hwmgr);
 }




 smu7_read_smc_sram_dword(hwmgr,
   SMU71_FIRMWARE_HEADER_LOCATION +
   offsetof(SMU71_Firmware_Header, SoftRegisters),
   &(priv->smu7_data.soft_regs_start), 0x40000);

 result = smu7_request_smu_load_fw(hwmgr);

 return result;
}
