
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {unsigned int usec_timeout; } ;


 int ETIMEDOUT ;
 int IH_BUSY ;
 int REG_GET_FIELD (int ,int ,int ) ;
 int RREG32 (int ) ;
 int SRBM_STATUS ;
 int mmSRBM_STATUS ;
 int udelay (int) ;

__attribute__((used)) static int iceland_ih_wait_for_idle(void *handle)
{
 unsigned i;
 u32 tmp;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 for (i = 0; i < adev->usec_timeout; i++) {

  tmp = RREG32(mmSRBM_STATUS);
  if (!REG_GET_FIELD(tmp, SRBM_STATUS, IH_BUSY))
   return 0;
  udelay(1);
 }
 return -ETIMEDOUT;
}
