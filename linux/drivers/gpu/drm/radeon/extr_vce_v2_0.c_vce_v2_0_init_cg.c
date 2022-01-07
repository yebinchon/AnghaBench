
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CGC_CLK_GATER_OFF_DLY_TIMER (int) ;
 int CGC_CLK_GATER_OFF_DLY_TIMER_MASK ;
 int CGC_CLK_GATE_DLY_TIMER (int ) ;
 int CGC_CLK_GATE_DLY_TIMER_MASK ;
 int CGC_UENC_WAIT_AWAKE ;
 int CLOCK_OFF_DELAY (int) ;
 int CLOCK_OFF_DELAY_MASK ;
 int CLOCK_ON_DELAY (int ) ;
 int CLOCK_ON_DELAY_MASK ;
 int RREG32 (int ) ;
 int VCE_CLOCK_GATING_A ;
 int VCE_CLOCK_GATING_B ;
 int VCE_UENC_CLOCK_GATING ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void vce_v2_0_init_cg(struct radeon_device *rdev)
{
 u32 tmp;

 tmp = RREG32(VCE_CLOCK_GATING_A);
 tmp &= ~(CGC_CLK_GATE_DLY_TIMER_MASK | CGC_CLK_GATER_OFF_DLY_TIMER_MASK);
 tmp |= (CGC_CLK_GATE_DLY_TIMER(0) | CGC_CLK_GATER_OFF_DLY_TIMER(4));
 tmp |= CGC_UENC_WAIT_AWAKE;
 WREG32(VCE_CLOCK_GATING_A, tmp);

 tmp = RREG32(VCE_UENC_CLOCK_GATING);
 tmp &= ~(CLOCK_ON_DELAY_MASK | CLOCK_OFF_DELAY_MASK);
 tmp |= (CLOCK_ON_DELAY(0) | CLOCK_OFF_DELAY(4));
 WREG32(VCE_UENC_CLOCK_GATING, tmp);

 tmp = RREG32(VCE_CLOCK_GATING_B);
 tmp |= 0x10;
 tmp &= ~0x100000;
 WREG32(VCE_CLOCK_GATING_B, tmp);
}
