
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int ECPU_SOFT_RESET ;
 int ETIMEDOUT ;
 int RREG32 (int ) ;
 int VCE_SOFT_RESET ;
 int VCE_STATUS_VCPU_REPORT_FW_LOADED_MASK ;
 int WREG32_FIELD (int ,int ,int) ;
 int mdelay (int) ;
 int mmVCE_STATUS ;

__attribute__((used)) static int vce_v3_0_firmware_loaded(struct amdgpu_device *adev)
{
 int i, j;

 for (i = 0; i < 10; ++i) {
  for (j = 0; j < 100; ++j) {
   uint32_t status = RREG32(mmVCE_STATUS);

   if (status & VCE_STATUS_VCPU_REPORT_FW_LOADED_MASK)
    return 0;
   mdelay(10);
  }

  DRM_ERROR("VCE not responding, trying to reset the ECPU!!!\n");
  WREG32_FIELD(VCE_SOFT_RESET, ECPU_SOFT_RESET, 1);
  mdelay(10);
  WREG32_FIELD(VCE_SOFT_RESET, ECPU_SOFT_RESET, 0);
  mdelay(10);
 }

 return -ETIMEDOUT;
}
