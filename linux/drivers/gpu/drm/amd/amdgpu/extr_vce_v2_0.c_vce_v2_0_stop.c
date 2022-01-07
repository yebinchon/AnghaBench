
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int DRM_INFO (char*) ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int WREG32_P (int ,int,int) ;
 int mdelay (int) ;
 int mmVCE_LMI_CTRL2 ;
 int mmVCE_LMI_STATUS ;
 int mmVCE_SOFT_RESET ;
 int mmVCE_STATUS ;
 int mmVCE_VCPU_CNTL ;
 scalar_t__ vce_v2_0_lmi_clean (struct amdgpu_device*) ;
 scalar_t__ vce_v2_0_wait_for_idle (struct amdgpu_device*) ;

__attribute__((used)) static int vce_v2_0_stop(struct amdgpu_device *adev)
{
 int i;
 int status;

 if (vce_v2_0_lmi_clean(adev)) {
  DRM_INFO("vce is not idle \n");
  return 0;
 }

 if (vce_v2_0_wait_for_idle(adev)) {
  DRM_INFO("VCE is busy, Can't set clock gating");
  return 0;
 }


 WREG32_P(mmVCE_LMI_CTRL2, 1 << 8, ~(1 << 8));

 for (i = 0; i < 100; ++i) {
  status = RREG32(mmVCE_LMI_STATUS);
  if (status & 0x240)
   break;
  mdelay(1);
 }

 WREG32_P(mmVCE_VCPU_CNTL, 0, ~0x80001);


 WREG32_P(mmVCE_SOFT_RESET, 1, ~0x1);

 WREG32(mmVCE_STATUS, 0);

 return 0;
}
