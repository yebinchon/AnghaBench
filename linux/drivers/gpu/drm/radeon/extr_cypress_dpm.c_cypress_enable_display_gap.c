
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_DISPLAY_GAP_CNTL ;
 int DISP1_GAP (int ) ;
 int DISP1_GAP_MASK ;
 int DISP1_GAP_MCHG (int ) ;
 int DISP1_GAP_MCHG_MASK ;
 int DISP2_GAP (int ) ;
 int DISP2_GAP_MASK ;
 int DISP2_GAP_MCHG (int ) ;
 int DISP2_GAP_MCHG_MASK ;
 int R600_PM_DISPLAY_GAP_IGNORE ;
 int R600_PM_DISPLAY_GAP_VBLANK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

void cypress_enable_display_gap(struct radeon_device *rdev)
{
 u32 tmp = RREG32(CG_DISPLAY_GAP_CNTL);

 tmp &= ~(DISP1_GAP_MASK | DISP2_GAP_MASK);
 tmp |= (DISP1_GAP(R600_PM_DISPLAY_GAP_IGNORE) |
  DISP2_GAP(R600_PM_DISPLAY_GAP_IGNORE));

 tmp &= ~(DISP1_GAP_MCHG_MASK | DISP2_GAP_MCHG_MASK);
 tmp |= (DISP1_GAP_MCHG(R600_PM_DISPLAY_GAP_VBLANK) |
  DISP2_GAP_MCHG(R600_PM_DISPLAY_GAP_IGNORE));
 WREG32(CG_DISPLAY_GAP_CNTL, tmp);
}
