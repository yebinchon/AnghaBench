
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RREG32 (int ) ;
 int VCE_CGTT_CLK_OVERRIDE ;
 int VCE_CLOCK_GATING_B ;
 int VCE_UENC_CLOCK_GATING ;
 int VCE_UENC_REG_CLOCK_GATING ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void vce_v2_0_set_sw_cg(struct radeon_device *rdev, bool gated)
{
 u32 tmp;

 if (gated) {
  tmp = RREG32(VCE_CLOCK_GATING_B);
  tmp |= 0xe70000;
  WREG32(VCE_CLOCK_GATING_B, tmp);

  tmp = RREG32(VCE_UENC_CLOCK_GATING);
  tmp |= 0xff000000;
  WREG32(VCE_UENC_CLOCK_GATING, tmp);

  tmp = RREG32(VCE_UENC_REG_CLOCK_GATING);
  tmp &= ~0x3fc;
  WREG32(VCE_UENC_REG_CLOCK_GATING, tmp);

  WREG32(VCE_CGTT_CLK_OVERRIDE, 0);
 } else {
  tmp = RREG32(VCE_CLOCK_GATING_B);
  tmp |= 0xe7;
  tmp &= ~0xe70000;
  WREG32(VCE_CLOCK_GATING_B, tmp);

  tmp = RREG32(VCE_UENC_CLOCK_GATING);
  tmp |= 0x1fe000;
  tmp &= ~0xff000000;
  WREG32(VCE_UENC_CLOCK_GATING, tmp);

  tmp = RREG32(VCE_UENC_REG_CLOCK_GATING);
  tmp |= 0x3fc;
  WREG32(VCE_UENC_REG_CLOCK_GATING, tmp);
 }
}
