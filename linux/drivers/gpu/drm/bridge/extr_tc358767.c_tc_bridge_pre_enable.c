
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_data {int panel; } ;
struct drm_bridge {int dummy; } ;


 struct tc_data* bridge_to_tc (struct drm_bridge*) ;
 int drm_panel_prepare (int ) ;

__attribute__((used)) static void tc_bridge_pre_enable(struct drm_bridge *bridge)
{
 struct tc_data *tc = bridge_to_tc(bridge);

 drm_panel_prepare(tc->panel);
}
