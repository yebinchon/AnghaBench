
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int clock; } ;
struct adv7511 {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_CLOCK_HIGH ;
 int MODE_OK ;

__attribute__((used)) static enum drm_mode_status adv7511_mode_valid(struct adv7511 *adv7511,
         struct drm_display_mode *mode)
{
 if (mode->clock > 165000)
  return MODE_CLOCK_HIGH;

 return MODE_OK;
}
