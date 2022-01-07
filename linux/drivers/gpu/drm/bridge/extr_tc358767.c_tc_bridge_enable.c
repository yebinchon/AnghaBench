
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_data {int panel; int dev; } ;
struct drm_bridge {int dummy; } ;


 struct tc_data* bridge_to_tc (struct drm_bridge*) ;
 int dev_err (int ,char*,int) ;
 int drm_panel_enable (int ) ;
 int tc_get_display_props (struct tc_data*) ;
 int tc_main_link_disable (struct tc_data*) ;
 int tc_main_link_enable (struct tc_data*) ;
 int tc_stream_enable (struct tc_data*) ;

__attribute__((used)) static void tc_bridge_enable(struct drm_bridge *bridge)
{
 struct tc_data *tc = bridge_to_tc(bridge);
 int ret;

 ret = tc_get_display_props(tc);
 if (ret < 0) {
  dev_err(tc->dev, "failed to read display props: %d\n", ret);
  return;
 }

 ret = tc_main_link_enable(tc);
 if (ret < 0) {
  dev_err(tc->dev, "main link enable error: %d\n", ret);
  return;
 }

 ret = tc_stream_enable(tc);
 if (ret < 0) {
  dev_err(tc->dev, "main link stream start error: %d\n", ret);
  tc_main_link_disable(tc);
  return;
 }

 drm_panel_enable(tc->panel);
}
