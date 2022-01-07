
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int MP1 ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmMP1_SMN_C2PMSG_90 ;
 int printk (char*,int ) ;
 int smu10_send_msg_to_smc_without_waiting (struct pp_hwmgr*,int ) ;
 scalar_t__ smu10_wait_for_response (struct pp_hwmgr*) ;

__attribute__((used)) static int smu10_send_msg_to_smc(struct pp_hwmgr *hwmgr, uint16_t msg)
{
 struct amdgpu_device *adev = hwmgr->adev;

 smu10_wait_for_response(hwmgr);

 WREG32_SOC15(MP1, 0, mmMP1_SMN_C2PMSG_90, 0);

 smu10_send_msg_to_smc_without_waiting(hwmgr, msg);

 if (smu10_wait_for_response(hwmgr) == 0)
  printk("Failed to send Message %x.\n", msg);

 return 0;
}
