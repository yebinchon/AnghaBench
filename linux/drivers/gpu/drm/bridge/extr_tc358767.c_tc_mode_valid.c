
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int num_lanes; int rate; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct tc_data {TYPE_2__ link; } ;
struct drm_display_mode {int clock; } ;
struct drm_bridge {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_BAD ;
 int MODE_CLOCK_HIGH ;
 int MODE_OK ;
 struct tc_data* bridge_to_tc (struct drm_bridge*) ;

__attribute__((used)) static enum drm_mode_status tc_mode_valid(struct drm_bridge *bridge,
       const struct drm_display_mode *mode)
{
 struct tc_data *tc = bridge_to_tc(bridge);
 u32 req, avail;
 u32 bits_per_pixel = 24;


 if (mode->clock > 154000)
  return MODE_CLOCK_HIGH;

 req = mode->clock * bits_per_pixel / 8;
 avail = tc->link.base.num_lanes * tc->link.base.rate;

 if (req > avail)
  return MODE_BAD;

 return MODE_OK;
}
