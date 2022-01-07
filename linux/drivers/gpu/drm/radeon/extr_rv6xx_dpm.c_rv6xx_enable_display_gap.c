
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_DISPLAY_GAP_CNTL ;
 int DISP1_GAP (int ) ;
 int DISP1_GAP_MCHG (int ) ;
 int DISP2_GAP (int ) ;
 int DISP2_GAP_MCHG (int ) ;
 int MCLK_PWRMGT_CNTL ;
 int R600_PM_DISPLAY_GAP_IGNORE ;
 int R600_PM_DISPLAY_GAP_VBLANK_OR_WM ;
 int USE_DISPLAY_GAP ;
 int VBI_TIMER_COUNT (int) ;
 int VBI_TIMER_UNIT (int) ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void rv6xx_enable_display_gap(struct radeon_device *rdev, bool enable)
{
 if (enable) {
  u32 tmp = (DISP1_GAP(R600_PM_DISPLAY_GAP_VBLANK_OR_WM) |
      DISP2_GAP(R600_PM_DISPLAY_GAP_VBLANK_OR_WM) |
      DISP1_GAP_MCHG(R600_PM_DISPLAY_GAP_IGNORE) |
      DISP2_GAP_MCHG(R600_PM_DISPLAY_GAP_IGNORE) |
      VBI_TIMER_COUNT(0x3FFF) |
      VBI_TIMER_UNIT(7));
  WREG32(CG_DISPLAY_GAP_CNTL, tmp);

  WREG32_P(MCLK_PWRMGT_CNTL, USE_DISPLAY_GAP, ~USE_DISPLAY_GAP);
 } else
  WREG32_P(MCLK_PWRMGT_CNTL, 0, ~USE_DISPLAY_GAP);
}
