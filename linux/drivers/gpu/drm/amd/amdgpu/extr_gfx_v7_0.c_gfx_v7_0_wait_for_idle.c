
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {unsigned int usec_timeout; } ;


 int ETIMEDOUT ;
 int GRBM_STATUS__GUI_ACTIVE_MASK ;
 int RREG32 (int ) ;
 int mmGRBM_STATUS ;
 int udelay (int) ;

__attribute__((used)) static int gfx_v7_0_wait_for_idle(void *handle)
{
 unsigned i;
 u32 tmp;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 for (i = 0; i < adev->usec_timeout; i++) {

  tmp = RREG32(mmGRBM_STATUS) & GRBM_STATUS__GUI_ACTIVE_MASK;

  if (!tmp)
   return 0;
  udelay(1);
 }
 return -ETIMEDOUT;
}
