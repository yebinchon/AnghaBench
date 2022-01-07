
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int flags; } ;


 int AMD_IS_APU ;
 int BIF_DOORBELL_APER_EN ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmBIF_DOORBELL_APER_EN ;

__attribute__((used)) static void vi_enable_doorbell_aperture(struct amdgpu_device *adev,
     bool enable)
{
 u32 tmp;


 if (adev->flags & AMD_IS_APU)
  return;

 tmp = RREG32(mmBIF_DOORBELL_APER_EN);
 if (enable)
  tmp = REG_SET_FIELD(tmp, BIF_DOORBELL_APER_EN, BIF_DOORBELL_APER_EN, 1);
 else
  tmp = REG_SET_FIELD(tmp, BIF_DOORBELL_APER_EN, BIF_DOORBELL_APER_EN, 0);

 WREG32(mmBIF_DOORBELL_APER_EN, tmp);
}
