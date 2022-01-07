
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int MP1 ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmMP1_SMN_C2PMSG_90 ;
 int pr_err (char*,int ,int,int) ;
 int smu_get_message_name (struct smu_context*,int ) ;
 int smu_msg_get_index (struct smu_context*,int ) ;
 int smu_v11_0_send_msg_without_waiting (struct smu_context*,int ) ;
 int smu_v11_0_wait_for_response (struct smu_context*) ;

__attribute__((used)) static int smu_v11_0_send_msg(struct smu_context *smu, uint16_t msg)
{
 struct amdgpu_device *adev = smu->adev;
 int ret = 0, index = 0;

 index = smu_msg_get_index(smu, msg);
 if (index < 0)
  return index;

 smu_v11_0_wait_for_response(smu);

 WREG32_SOC15(MP1, 0, mmMP1_SMN_C2PMSG_90, 0);

 smu_v11_0_send_msg_without_waiting(smu, (uint16_t)index);

 ret = smu_v11_0_wait_for_response(smu);

 if (ret)
  pr_err("failed send message: %10s (%d) response %#x\n",
         smu_get_message_name(smu, msg), index, ret);

 return ret;

}
