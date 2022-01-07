
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int ETIMEDOUT ;
 int RREG32 (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int VCE ;
 int VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK ;
 int VCE_STATUS_VCPU_REPORT_FW_LOADED_MASK ;
 int WREG32_P (int ,int ,int ) ;
 int mdelay (int) ;
 int mmVCE_SOFT_RESET ;
 int mmVCE_STATUS ;

__attribute__((used)) static int vce_v4_0_firmware_loaded(struct amdgpu_device *adev)
{
 int i, j;

 for (i = 0; i < 10; ++i) {
  for (j = 0; j < 100; ++j) {
   uint32_t status =
    RREG32(SOC15_REG_OFFSET(VCE, 0, mmVCE_STATUS));

   if (status & VCE_STATUS_VCPU_REPORT_FW_LOADED_MASK)
    return 0;
   mdelay(10);
  }

  DRM_ERROR("VCE not responding, trying to reset the ECPU!!!\n");
  WREG32_P(SOC15_REG_OFFSET(VCE, 0, mmVCE_SOFT_RESET),
    VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK,
    ~VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK);
  mdelay(10);
  WREG32_P(SOC15_REG_OFFSET(VCE, 0, mmVCE_SOFT_RESET), 0,
    ~VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK);
  mdelay(10);

 }

 return -ETIMEDOUT;
}
