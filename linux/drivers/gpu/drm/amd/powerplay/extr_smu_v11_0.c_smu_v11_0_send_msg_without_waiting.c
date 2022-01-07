
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int MP1 ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmMP1_SMN_C2PMSG_66 ;

__attribute__((used)) static int smu_v11_0_send_msg_without_waiting(struct smu_context *smu,
           uint16_t msg)
{
 struct amdgpu_device *adev = smu->adev;
 WREG32_SOC15(MP1, 0, mmMP1_SMN_C2PMSG_66, msg);
 return 0;
}
