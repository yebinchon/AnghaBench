
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {unsigned int usec_timeout; } ;


 int ETIMEDOUT ;
 int GC ;
 int GRBM_STATUS ;
 int GRBM_STATUS__GUI_ACTIVE_MASK ;
 int GUI_ACTIVE ;
 int REG_GET_FIELD (int,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmGRBM_STATUS ;
 int udelay (int) ;

__attribute__((used)) static int gfx_v10_0_wait_for_idle(void *handle)
{
 unsigned i;
 u32 tmp;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 for (i = 0; i < adev->usec_timeout; i++) {

  tmp = RREG32_SOC15(GC, 0, mmGRBM_STATUS) &
   GRBM_STATUS__GUI_ACTIVE_MASK;

  if (!REG_GET_FIELD(tmp, GRBM_STATUS, GUI_ACTIVE))
   return 0;
  udelay(1);
 }
 return -ETIMEDOUT;
}
