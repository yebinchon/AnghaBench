
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_2__** crtcs; int mode_config_initialized; } ;
struct radeon_device {int disp_priority; TYPE_3__ mode_info; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {struct drm_display_mode mode; scalar_t__ enabled; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 int RREG32 (int ) ;
 int R_006548_D1MODE_PRIORITY_A_CNT ;
 int R_00654C_D1MODE_PRIORITY_B_CNT ;
 int R_006D48_D2MODE_PRIORITY_A_CNT ;
 int R_006D4C_D2MODE_PRIORITY_B_CNT ;
 int S_006548_D1MODE_PRIORITY_A_ALWAYS_ON (int) ;
 int S_006D48_D2MODE_PRIORITY_A_ALWAYS_ON (int) ;
 int WREG32 (int ,int ) ;
 int radeon_update_display_priority (struct radeon_device*) ;
 int rs690_line_buffer_adjust (struct radeon_device*,struct drm_display_mode*,struct drm_display_mode*) ;

void rs600_bandwidth_update(struct radeon_device *rdev)
{
 struct drm_display_mode *mode0 = ((void*)0);
 struct drm_display_mode *mode1 = ((void*)0);
 u32 d1mode_priority_a_cnt, d2mode_priority_a_cnt;


 if (!rdev->mode_info.mode_config_initialized)
  return;

 radeon_update_display_priority(rdev);

 if (rdev->mode_info.crtcs[0]->base.enabled)
  mode0 = &rdev->mode_info.crtcs[0]->base.mode;
 if (rdev->mode_info.crtcs[1]->base.enabled)
  mode1 = &rdev->mode_info.crtcs[1]->base.mode;

 rs690_line_buffer_adjust(rdev, mode0, mode1);

 if (rdev->disp_priority == 2) {
  d1mode_priority_a_cnt = RREG32(R_006548_D1MODE_PRIORITY_A_CNT);
  d2mode_priority_a_cnt = RREG32(R_006D48_D2MODE_PRIORITY_A_CNT);
  d1mode_priority_a_cnt |= S_006548_D1MODE_PRIORITY_A_ALWAYS_ON(1);
  d2mode_priority_a_cnt |= S_006D48_D2MODE_PRIORITY_A_ALWAYS_ON(1);
  WREG32(R_006548_D1MODE_PRIORITY_A_CNT, d1mode_priority_a_cnt);
  WREG32(R_00654C_D1MODE_PRIORITY_B_CNT, d1mode_priority_a_cnt);
  WREG32(R_006D48_D2MODE_PRIORITY_A_CNT, d2mode_priority_a_cnt);
  WREG32(R_006D4C_D2MODE_PRIORITY_B_CNT, d2mode_priority_a_cnt);
 }
}
