
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {scalar_t__ usec_timeout; } ;


 int EINVAL ;
 scalar_t__ RREG32 (int ) ;
 scalar_t__ SMC_MESSAGE_0__SMC_MSG_MASK ;
 scalar_t__ SMC_RESP_0__SMC_RESP_MASK ;
 int WREG32 (int ,scalar_t__) ;
 int mmSMC_MESSAGE_0 ;
 int mmSMC_RESP_0 ;
 int udelay (int) ;

int amdgpu_kv_notify_message_to_smu(struct amdgpu_device *adev, u32 id)
{
 u32 i;
 u32 tmp = 0;

 WREG32(mmSMC_MESSAGE_0, id & SMC_MESSAGE_0__SMC_MSG_MASK);

 for (i = 0; i < adev->usec_timeout; i++) {
  if ((RREG32(mmSMC_RESP_0) & SMC_RESP_0__SMC_RESP_MASK) != 0)
   break;
  udelay(1);
 }
 tmp = RREG32(mmSMC_RESP_0) & SMC_RESP_0__SMC_RESP_MASK;

 if (tmp != 1) {
  if (tmp == 0xFF)
   return -EINVAL;
  else if (tmp == 0xFE)
   return -EINVAL;
 }

 return 0;
}
