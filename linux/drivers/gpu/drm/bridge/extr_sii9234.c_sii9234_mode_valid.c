
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {scalar_t__ clock; } ;
struct drm_bridge {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 scalar_t__ MHL1_MAX_CLK ;
 int MODE_CLOCK_HIGH ;
 int MODE_OK ;

__attribute__((used)) static enum drm_mode_status sii9234_mode_valid(struct drm_bridge *bridge,
      const struct drm_display_mode *mode)
{
 if (mode->clock > MHL1_MAX_CLK)
  return MODE_CLOCK_HIGH;

 return MODE_OK;
}
