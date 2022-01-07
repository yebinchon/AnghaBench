
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int MP1 ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmMP1_SMN_C2PMSG_82 ;
 int mmMP1_SMN_C2PMSG_90 ;
 int pr_err (char*,int ,int,int) ;
 int smu9_send_msg_to_smc_without_waiting (struct pp_hwmgr*,int ) ;
 int smu9_wait_for_response (struct pp_hwmgr*) ;

int smu9_send_msg_to_smc_with_parameter(struct pp_hwmgr *hwmgr,
     uint16_t msg, uint32_t parameter)
{
 struct amdgpu_device *adev = hwmgr->adev;
 uint32_t ret;

 smu9_wait_for_response(hwmgr);

 WREG32_SOC15(MP1, 0, mmMP1_SMN_C2PMSG_90, 0);

 WREG32_SOC15(MP1, 0, mmMP1_SMN_C2PMSG_82, parameter);

 smu9_send_msg_to_smc_without_waiting(hwmgr, msg);

 ret = smu9_wait_for_response(hwmgr);
 if (ret != 1)
  pr_err("Failed message: 0x%x, input parameter: 0x%x, error code: 0x%x\n", msg, parameter, ret);

 return 0;
}
