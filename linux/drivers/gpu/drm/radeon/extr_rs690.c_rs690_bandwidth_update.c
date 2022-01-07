
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rs690_watermark {int lb_request_fifo_depth; } ;
struct TYPE_5__ {TYPE_3__** crtcs; int mode_config_initialized; } ;
struct radeon_device {int disp_priority; scalar_t__ family; TYPE_2__ mode_info; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {struct drm_display_mode mode; scalar_t__ enabled; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 scalar_t__ CHIP_RS690 ;
 scalar_t__ CHIP_RS740 ;
 scalar_t__ CHIP_RS780 ;
 scalar_t__ CHIP_RS880 ;
 int C_000104_MC_DISP0R_INIT_LAT ;
 int C_000104_MC_DISP1R_INIT_LAT ;
 int RREG32_MC (int ) ;
 int R_000104_MC_INIT_MISC_LAT_TIMER ;
 int R_006548_D1MODE_PRIORITY_A_CNT ;
 int R_00654C_D1MODE_PRIORITY_B_CNT ;
 int R_006C9C_DCP_CONTROL ;
 int R_006D48_D2MODE_PRIORITY_A_CNT ;
 int R_006D4C_D2MODE_PRIORITY_B_CNT ;
 int R_006D58_LB_MAX_REQ_OUTSTANDING ;
 int S_000104_MC_DISP0R_INIT_LAT (int) ;
 int S_000104_MC_DISP1R_INIT_LAT (int) ;
 int WREG32 (int ,int) ;
 int WREG32_MC (int ,int) ;
 int radeon_update_display_priority (struct radeon_device*) ;
 int rs690_compute_mode_priority (struct radeon_device*,struct rs690_watermark*,struct rs690_watermark*,struct drm_display_mode*,struct drm_display_mode*,int*,int*) ;
 int rs690_crtc_bandwidth_compute (struct radeon_device*,TYPE_3__*,struct rs690_watermark*,int) ;
 int rs690_line_buffer_adjust (struct radeon_device*,struct drm_display_mode*,struct drm_display_mode*) ;

void rs690_bandwidth_update(struct radeon_device *rdev)
{
 struct drm_display_mode *mode0 = ((void*)0);
 struct drm_display_mode *mode1 = ((void*)0);
 struct rs690_watermark wm0_high, wm0_low;
 struct rs690_watermark wm1_high, wm1_low;
 u32 tmp;
 u32 d1mode_priority_a_cnt, d1mode_priority_b_cnt;
 u32 d2mode_priority_a_cnt, d2mode_priority_b_cnt;

 if (!rdev->mode_info.mode_config_initialized)
  return;

 radeon_update_display_priority(rdev);

 if (rdev->mode_info.crtcs[0]->base.enabled)
  mode0 = &rdev->mode_info.crtcs[0]->base.mode;
 if (rdev->mode_info.crtcs[1]->base.enabled)
  mode1 = &rdev->mode_info.crtcs[1]->base.mode;





 if ((rdev->disp_priority == 2) &&
     ((rdev->family == CHIP_RS690) || (rdev->family == CHIP_RS740))) {
  tmp = RREG32_MC(R_000104_MC_INIT_MISC_LAT_TIMER);
  tmp &= C_000104_MC_DISP0R_INIT_LAT;
  tmp &= C_000104_MC_DISP1R_INIT_LAT;
  if (mode0)
   tmp |= S_000104_MC_DISP0R_INIT_LAT(1);
  if (mode1)
   tmp |= S_000104_MC_DISP1R_INIT_LAT(1);
  WREG32_MC(R_000104_MC_INIT_MISC_LAT_TIMER, tmp);
 }
 rs690_line_buffer_adjust(rdev, mode0, mode1);

 if ((rdev->family == CHIP_RS690) || (rdev->family == CHIP_RS740))
  WREG32(R_006C9C_DCP_CONTROL, 0);
 if ((rdev->family == CHIP_RS780) || (rdev->family == CHIP_RS880))
  WREG32(R_006C9C_DCP_CONTROL, 2);

 rs690_crtc_bandwidth_compute(rdev, rdev->mode_info.crtcs[0], &wm0_high, 0);
 rs690_crtc_bandwidth_compute(rdev, rdev->mode_info.crtcs[1], &wm1_high, 0);

 rs690_crtc_bandwidth_compute(rdev, rdev->mode_info.crtcs[0], &wm0_low, 1);
 rs690_crtc_bandwidth_compute(rdev, rdev->mode_info.crtcs[1], &wm1_low, 1);

 tmp = (wm0_high.lb_request_fifo_depth - 1);
 tmp |= (wm1_high.lb_request_fifo_depth - 1) << 16;
 WREG32(R_006D58_LB_MAX_REQ_OUTSTANDING, tmp);

 rs690_compute_mode_priority(rdev,
        &wm0_high, &wm1_high,
        mode0, mode1,
        &d1mode_priority_a_cnt, &d2mode_priority_a_cnt);
 rs690_compute_mode_priority(rdev,
        &wm0_low, &wm1_low,
        mode0, mode1,
        &d1mode_priority_b_cnt, &d2mode_priority_b_cnt);

 WREG32(R_006548_D1MODE_PRIORITY_A_CNT, d1mode_priority_a_cnt);
 WREG32(R_00654C_D1MODE_PRIORITY_B_CNT, d1mode_priority_b_cnt);
 WREG32(R_006D48_D2MODE_PRIORITY_A_CNT, d2mode_priority_a_cnt);
 WREG32(R_006D4C_D2MODE_PRIORITY_B_CNT, d2mode_priority_b_cnt);
}
