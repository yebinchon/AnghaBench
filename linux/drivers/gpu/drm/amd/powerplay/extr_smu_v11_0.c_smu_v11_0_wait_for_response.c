
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int usec_timeout; } ;


 int EIO ;
 int ETIME ;
 int MP1 ;
 scalar_t__ MP1_C2PMSG_90__CONTENT_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmMP1_SMN_C2PMSG_90 ;
 int udelay (int) ;

__attribute__((used)) static int smu_v11_0_wait_for_response(struct smu_context *smu)
{
 struct amdgpu_device *adev = smu->adev;
 uint32_t cur_value, i, timeout = adev->usec_timeout * 10;

 for (i = 0; i < timeout; i++) {
  cur_value = RREG32_SOC15(MP1, 0, mmMP1_SMN_C2PMSG_90);
  if ((cur_value & MP1_C2PMSG_90__CONTENT_MASK) != 0)
   break;
  udelay(1);
 }


 if (i == timeout)
  return -ETIME;

 return RREG32_SOC15(MP1, 0, mmMP1_SMN_C2PMSG_90) == 0x1 ? 0 : -EIO;
}
