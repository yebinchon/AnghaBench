
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int new_active_crtc_count; int new_active_crtcs; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {int num_crtc; TYPE_2__ pm; } ;


 int CG_DISPLAY_GAP_CNTL ;
 int DCCG_DISP1_SLOW_SELECT (int) ;
 int DCCG_DISP1_SLOW_SELECT_MASK ;
 int DCCG_DISP1_SLOW_SELECT_SHIFT ;
 int DCCG_DISP_SLOW_SELECT_REG ;
 int DISP1_GAP (int ) ;
 int DISP1_GAP_MASK ;
 int DISP2_GAP (int ) ;
 int DISP2_GAP_MASK ;
 int R600_PM_DISPLAY_GAP_IGNORE ;
 int R600_PM_DISPLAY_GAP_VBLANK_OR_WM ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int si_notify_smc_display_change (struct radeon_device*,int) ;

__attribute__((used)) static void si_program_display_gap(struct radeon_device *rdev)
{
 u32 tmp, pipe;
 int i;

 tmp = RREG32(CG_DISPLAY_GAP_CNTL) & ~(DISP1_GAP_MASK | DISP2_GAP_MASK);
 if (rdev->pm.dpm.new_active_crtc_count > 0)
  tmp |= DISP1_GAP(R600_PM_DISPLAY_GAP_VBLANK_OR_WM);
 else
  tmp |= DISP1_GAP(R600_PM_DISPLAY_GAP_IGNORE);

 if (rdev->pm.dpm.new_active_crtc_count > 1)
  tmp |= DISP2_GAP(R600_PM_DISPLAY_GAP_VBLANK_OR_WM);
 else
  tmp |= DISP2_GAP(R600_PM_DISPLAY_GAP_IGNORE);

 WREG32(CG_DISPLAY_GAP_CNTL, tmp);

 tmp = RREG32(DCCG_DISP_SLOW_SELECT_REG);
 pipe = (tmp & DCCG_DISP1_SLOW_SELECT_MASK) >> DCCG_DISP1_SLOW_SELECT_SHIFT;

 if ((rdev->pm.dpm.new_active_crtc_count > 0) &&
     (!(rdev->pm.dpm.new_active_crtcs & (1 << pipe)))) {

  for (i = 0; i < rdev->num_crtc; i++) {
   if (rdev->pm.dpm.new_active_crtcs & (1 << i))
    break;
  }
  if (i == rdev->num_crtc)
   pipe = 0;
  else
   pipe = i;

  tmp &= ~DCCG_DISP1_SLOW_SELECT_MASK;
  tmp |= DCCG_DISP1_SLOW_SELECT(pipe);
  WREG32(DCCG_DISP_SLOW_SELECT_REG, tmp);
 }





 si_notify_smc_display_change(rdev, rdev->pm.dpm.new_active_crtc_count > 0);
}
