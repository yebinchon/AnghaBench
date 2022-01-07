
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int EINVAL ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SMUIO ;
 int SMUSVI0_TEL_PLANE0__SVI0_PLANE0_VDDCOR_MASK ;
 int SMUSVI0_TEL_PLANE0__SVI0_PLANE0_VDDCOR__SHIFT ;
 scalar_t__ convert_to_vddc (int ) ;
 int mmSMUSVI0_TEL_PLANE0 ;

__attribute__((used)) static int smu_v11_0_get_gfx_vdd(struct smu_context *smu, uint32_t *value)
{
 struct amdgpu_device *adev = smu->adev;
 uint32_t vdd = 0, val_vid = 0;

 if (!value)
  return -EINVAL;
 val_vid = (RREG32_SOC15(SMUIO, 0, mmSMUSVI0_TEL_PLANE0) &
  SMUSVI0_TEL_PLANE0__SVI0_PLANE0_VDDCOR_MASK) >>
  SMUSVI0_TEL_PLANE0__SVI0_PLANE0_VDDCOR__SHIFT;

 vdd = (uint32_t)convert_to_vddc((uint8_t)val_vid);

 *value = vdd;

 return 0;

}
