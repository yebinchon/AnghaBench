
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_DISPLAY_GAP_CNTL ;
 int DISP_GAP (int ) ;
 int DISP_GAP_MASK ;
 int DISP_GAP_MCHG (int ) ;
 int DISP_GAP_MCHG_MASK ;
 int R600_PM_DISPLAY_GAP_IGNORE ;
 int R600_PM_DISPLAY_GAP_VBLANK ;
 int RREG32_SMC (int ) ;
 int WREG32_SMC (int ,int) ;

__attribute__((used)) static void ci_enable_display_gap(struct radeon_device *rdev)
{
 u32 tmp = RREG32_SMC(CG_DISPLAY_GAP_CNTL);

 tmp &= ~(DISP_GAP_MASK | DISP_GAP_MCHG_MASK);
 tmp |= (DISP_GAP(R600_PM_DISPLAY_GAP_IGNORE) |
  DISP_GAP_MCHG(R600_PM_DISPLAY_GAP_VBLANK));

 WREG32_SMC(CG_DISPLAY_GAP_CNTL, tmp);
}
