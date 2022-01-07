
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dual_link; } ;
struct thc63_dev {TYPE_1__ timings; } ;
struct drm_display_mode {unsigned int clock; } ;
struct drm_bridge {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_CLOCK_HIGH ;
 int MODE_CLOCK_LOW ;
 int MODE_OK ;
 struct thc63_dev* to_thc63 (struct drm_bridge*) ;

__attribute__((used)) static enum drm_mode_status thc63_mode_valid(struct drm_bridge *bridge,
     const struct drm_display_mode *mode)
{
 struct thc63_dev *thc63 = to_thc63(bridge);
 unsigned int min_freq;
 unsigned int max_freq;







 if (thc63->timings.dual_link) {
  min_freq = 40000;
  max_freq = 150000;
 } else {
  min_freq = 8000;
  max_freq = 135000;
 }

 if (mode->clock < min_freq)
  return MODE_CLOCK_LOW;

 if (mode->clock > max_freq)
  return MODE_CLOCK_HIGH;

 return MODE_OK;
}
