
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int EIO ;
 int MP1 ;
 int PPSMC_Result_OK ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmMP1_SMN_C2PMSG_90 ;
 int pr_err (char*,int ,int) ;
 int vega20_send_msg_to_smc_without_waiting (struct pp_hwmgr*,int ) ;
 int vega20_wait_for_response (struct pp_hwmgr*) ;

__attribute__((used)) static int vega20_send_msg_to_smc(struct pp_hwmgr *hwmgr, uint16_t msg)
{
 struct amdgpu_device *adev = hwmgr->adev;
 int ret = 0;

 vega20_wait_for_response(hwmgr);

 WREG32_SOC15(MP1, 0, mmMP1_SMN_C2PMSG_90, 0);

 vega20_send_msg_to_smc_without_waiting(hwmgr, msg);

 ret = vega20_wait_for_response(hwmgr);
 if (ret != PPSMC_Result_OK)
  pr_err("Failed to send message 0x%x, response 0x%x\n", msg, ret);

 return (ret == PPSMC_Result_OK) ? 0 : -EIO;
}
