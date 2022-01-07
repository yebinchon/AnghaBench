
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct tc_data {struct drm_display_mode mode; } ;
struct drm_bridge {int dummy; } ;


 struct tc_data* bridge_to_tc (struct drm_bridge*) ;

__attribute__((used)) static void tc_bridge_mode_set(struct drm_bridge *bridge,
          const struct drm_display_mode *mode,
          const struct drm_display_mode *adj)
{
 struct tc_data *tc = bridge_to_tc(bridge);

 tc->mode = *mode;
}
