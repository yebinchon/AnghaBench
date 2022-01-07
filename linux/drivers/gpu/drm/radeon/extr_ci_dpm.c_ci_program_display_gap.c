
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int new_active_crtc_count; } ;
struct TYPE_8__ {TYPE_3__ dpm; } ;
struct TYPE_5__ {int reference_freq; } ;
struct TYPE_6__ {TYPE_1__ spll; } ;
struct radeon_device {TYPE_4__ pm; TYPE_2__ clock; } ;


 int CG_DISPLAY_GAP_CNTL ;
 int CG_DISPLAY_GAP_CNTL2 ;
 int DISP_GAP (int ) ;
 int DISP_GAP_MASK ;
 int PreVBlankGap ;
 int R600_PM_DISPLAY_GAP_IGNORE ;
 int R600_PM_DISPLAY_GAP_VBLANK_OR_WM ;
 int RREG32_SMC (int ) ;
 int SMU7_SoftRegisters ;
 int VBlankTimeout ;
 int WREG32_SMC (int ,int) ;
 int ci_notify_smc_display_change (struct radeon_device*,int) ;
 int ci_write_smc_soft_register (struct radeon_device*,int ,int) ;
 int offsetof (int ,int ) ;
 int r600_dpm_get_vblank_time (struct radeon_device*) ;
 int r600_dpm_get_vrefresh (struct radeon_device*) ;

__attribute__((used)) static void ci_program_display_gap(struct radeon_device *rdev)
{
 u32 tmp = RREG32_SMC(CG_DISPLAY_GAP_CNTL);
 u32 pre_vbi_time_in_us;
 u32 frame_time_in_us;
 u32 ref_clock = rdev->clock.spll.reference_freq;
 u32 refresh_rate = r600_dpm_get_vrefresh(rdev);
 u32 vblank_time = r600_dpm_get_vblank_time(rdev);

 tmp &= ~DISP_GAP_MASK;
 if (rdev->pm.dpm.new_active_crtc_count > 0)
  tmp |= DISP_GAP(R600_PM_DISPLAY_GAP_VBLANK_OR_WM);
 else
  tmp |= DISP_GAP(R600_PM_DISPLAY_GAP_IGNORE);
 WREG32_SMC(CG_DISPLAY_GAP_CNTL, tmp);

 if (refresh_rate == 0)
  refresh_rate = 60;
 if (vblank_time == 0xffffffff)
  vblank_time = 500;
 frame_time_in_us = 1000000 / refresh_rate;
 pre_vbi_time_in_us =
  frame_time_in_us - 200 - vblank_time;
 tmp = pre_vbi_time_in_us * (ref_clock / 100);

 WREG32_SMC(CG_DISPLAY_GAP_CNTL2, tmp);
 ci_write_smc_soft_register(rdev, offsetof(SMU7_SoftRegisters, PreVBlankGap), 0x64);
 ci_write_smc_soft_register(rdev, offsetof(SMU7_SoftRegisters, VBlankTimeout), (frame_time_in_us - pre_vbi_time_in_us));


 ci_notify_smc_display_change(rdev, (rdev->pm.dpm.new_active_crtc_count == 1));

}
