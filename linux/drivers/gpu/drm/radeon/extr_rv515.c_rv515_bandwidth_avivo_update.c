
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rv515_watermark {int lb_request_fifo_depth; } ;
struct TYPE_5__ {TYPE_3__** crtcs; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {struct drm_display_mode mode; scalar_t__ enabled; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 int D1MODE_PRIORITY_A_CNT ;
 int D1MODE_PRIORITY_B_CNT ;
 int D2MODE_PRIORITY_A_CNT ;
 int D2MODE_PRIORITY_B_CNT ;
 int LB_MAX_REQ_OUTSTANDING ;
 int WREG32 (int ,int) ;
 int rs690_line_buffer_adjust (struct radeon_device*,struct drm_display_mode*,struct drm_display_mode*) ;
 int rv515_compute_mode_priority (struct radeon_device*,struct rv515_watermark*,struct rv515_watermark*,struct drm_display_mode*,struct drm_display_mode*,int*,int*) ;
 int rv515_crtc_bandwidth_compute (struct radeon_device*,TYPE_3__*,struct rv515_watermark*,int) ;

void rv515_bandwidth_avivo_update(struct radeon_device *rdev)
{
 struct drm_display_mode *mode0 = ((void*)0);
 struct drm_display_mode *mode1 = ((void*)0);
 struct rv515_watermark wm0_high, wm0_low;
 struct rv515_watermark wm1_high, wm1_low;
 u32 tmp;
 u32 d1mode_priority_a_cnt, d1mode_priority_b_cnt;
 u32 d2mode_priority_a_cnt, d2mode_priority_b_cnt;

 if (rdev->mode_info.crtcs[0]->base.enabled)
  mode0 = &rdev->mode_info.crtcs[0]->base.mode;
 if (rdev->mode_info.crtcs[1]->base.enabled)
  mode1 = &rdev->mode_info.crtcs[1]->base.mode;
 rs690_line_buffer_adjust(rdev, mode0, mode1);

 rv515_crtc_bandwidth_compute(rdev, rdev->mode_info.crtcs[0], &wm0_high, 0);
 rv515_crtc_bandwidth_compute(rdev, rdev->mode_info.crtcs[1], &wm1_high, 0);

 rv515_crtc_bandwidth_compute(rdev, rdev->mode_info.crtcs[0], &wm0_low, 0);
 rv515_crtc_bandwidth_compute(rdev, rdev->mode_info.crtcs[1], &wm1_low, 0);

 tmp = wm0_high.lb_request_fifo_depth;
 tmp |= wm1_high.lb_request_fifo_depth << 16;
 WREG32(LB_MAX_REQ_OUTSTANDING, tmp);

 rv515_compute_mode_priority(rdev,
        &wm0_high, &wm1_high,
        mode0, mode1,
        &d1mode_priority_a_cnt, &d2mode_priority_a_cnt);
 rv515_compute_mode_priority(rdev,
        &wm0_low, &wm1_low,
        mode0, mode1,
        &d1mode_priority_b_cnt, &d2mode_priority_b_cnt);

 WREG32(D1MODE_PRIORITY_A_CNT, d1mode_priority_a_cnt);
 WREG32(D1MODE_PRIORITY_B_CNT, d1mode_priority_b_cnt);
 WREG32(D2MODE_PRIORITY_A_CNT, d2mode_priority_a_cnt);
 WREG32(D2MODE_PRIORITY_B_CNT, d2mode_priority_b_cnt);
}
