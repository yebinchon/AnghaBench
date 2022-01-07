
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pad_max_freq_hz; } ;
struct ltdc_device {TYPE_1__ caps; int pixel_clk; } ;
struct drm_display_mode {int clock; int type; } ;
struct drm_crtc {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int CLK_TOLERANCE_HZ ;
 int DRM_DEBUG_DRIVER (char*,int,int) ;
 int DRM_MODE_TYPE_PREFERRED ;
 int MODE_CLOCK_HIGH ;
 int MODE_CLOCK_RANGE ;
 int MODE_OK ;
 int clk_round_rate (int ,int) ;
 struct ltdc_device* crtc_to_ltdc (struct drm_crtc*) ;

__attribute__((used)) static enum drm_mode_status
ltdc_crtc_mode_valid(struct drm_crtc *crtc,
       const struct drm_display_mode *mode)
{
 struct ltdc_device *ldev = crtc_to_ltdc(crtc);
 int target = mode->clock * 1000;
 int target_min = target - CLK_TOLERANCE_HZ;
 int target_max = target + CLK_TOLERANCE_HZ;
 int result;

 result = clk_round_rate(ldev->pixel_clk, target);

 DRM_DEBUG_DRIVER("clk rate target %d, available %d\n", target, result);


 if (result > ldev->caps.pad_max_freq_hz)
  return MODE_CLOCK_HIGH;
 if (mode->type & DRM_MODE_TYPE_PREFERRED)
  return MODE_OK;





 if (result < target_min || result > target_max)
  return MODE_CLOCK_RANGE;

 return MODE_OK;
}
