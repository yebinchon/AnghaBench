
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {TYPE_3__** crtcs; int mode_config_initialized; } ;
struct radeon_device {int num_crtc; TYPE_2__ mode_info; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_5__ {struct drm_display_mode mode; scalar_t__ enabled; } ;
struct TYPE_7__ {TYPE_1__ base; } ;


 scalar_t__ dce8_line_buffer_adjust (struct radeon_device*,TYPE_3__*,struct drm_display_mode*) ;
 int dce8_program_watermarks (struct radeon_device*,TYPE_3__*,scalar_t__,scalar_t__) ;
 int radeon_update_display_priority (struct radeon_device*) ;

void dce8_bandwidth_update(struct radeon_device *rdev)
{
 struct drm_display_mode *mode = ((void*)0);
 u32 num_heads = 0, lb_size;
 int i;

 if (!rdev->mode_info.mode_config_initialized)
  return;

 radeon_update_display_priority(rdev);

 for (i = 0; i < rdev->num_crtc; i++) {
  if (rdev->mode_info.crtcs[i]->base.enabled)
   num_heads++;
 }
 for (i = 0; i < rdev->num_crtc; i++) {
  mode = &rdev->mode_info.crtcs[i]->base.mode;
  lb_size = dce8_line_buffer_adjust(rdev, rdev->mode_info.crtcs[i], mode);
  dce8_program_watermarks(rdev, rdev->mode_info.crtcs[i], lb_size, num_heads);
 }
}
