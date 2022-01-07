
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int cg_flags; } ;


 int CGC_DYN_CLOCK_MODE ;
 int RADEON_CG_SUPPORT_VCE_MGCG ;
 int RREG32 (int ) ;
 int VCE_CLOCK_GATING_A ;
 int VCE_UENC_CLOCK_GATING ;
 int VCE_UENC_REG_CLOCK_GATING ;
 int WREG32 (int ,int) ;

void vce_v1_0_enable_mgcg(struct radeon_device *rdev, bool enable)
{
 u32 tmp;

 if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_VCE_MGCG)) {
  tmp = RREG32(VCE_CLOCK_GATING_A);
  tmp |= CGC_DYN_CLOCK_MODE;
  WREG32(VCE_CLOCK_GATING_A, tmp);

  tmp = RREG32(VCE_UENC_CLOCK_GATING);
  tmp &= ~0x1ff000;
  tmp |= 0xff800000;
  WREG32(VCE_UENC_CLOCK_GATING, tmp);

  tmp = RREG32(VCE_UENC_REG_CLOCK_GATING);
  tmp &= ~0x3ff;
  WREG32(VCE_UENC_REG_CLOCK_GATING, tmp);
 } else {
  tmp = RREG32(VCE_CLOCK_GATING_A);
  tmp &= ~CGC_DYN_CLOCK_MODE;
  WREG32(VCE_CLOCK_GATING_A, tmp);

  tmp = RREG32(VCE_UENC_CLOCK_GATING);
  tmp |= 0x1ff000;
  tmp &= ~0xff800000;
  WREG32(VCE_UENC_CLOCK_GATING, tmp);

  tmp = RREG32(VCE_UENC_REG_CLOCK_GATING);
  tmp |= 0x3ff;
  WREG32(VCE_UENC_REG_CLOCK_GATING, tmp);
 }
}
