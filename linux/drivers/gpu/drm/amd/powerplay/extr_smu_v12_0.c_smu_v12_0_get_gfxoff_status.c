
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int RREG32_SOC15 (int ,int ,int ) ;
 int SMUIO ;
 int SMUIO_GFX_MISC_CNTL__PWR_GFXOFF_STATUS_MASK ;
 int SMUIO_GFX_MISC_CNTL__PWR_GFXOFF_STATUS__SHIFT ;
 int mmSMUIO_GFX_MISC_CNTL ;

__attribute__((used)) static uint32_t smu_v12_0_get_gfxoff_status(struct smu_context *smu)
{
 uint32_t reg;
 uint32_t gfxOff_Status = 0;
 struct amdgpu_device *adev = smu->adev;

 reg = RREG32_SOC15(SMUIO, 0, mmSMUIO_GFX_MISC_CNTL);
 gfxOff_Status = (reg & SMUIO_GFX_MISC_CNTL__PWR_GFXOFF_STATUS_MASK)
  >> SMUIO_GFX_MISC_CNTL__PWR_GFXOFF_STATUS__SHIFT;

 return gfxOff_Status;
}
