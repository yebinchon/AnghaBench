
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_data {int dev; int panel; } ;
struct drm_bridge {int dummy; } ;


 struct tc_data* bridge_to_tc (struct drm_bridge*) ;
 int dev_err (int ,char*,int) ;
 int drm_panel_disable (int ) ;
 int tc_main_link_disable (struct tc_data*) ;
 int tc_stream_disable (struct tc_data*) ;

__attribute__((used)) static void tc_bridge_disable(struct drm_bridge *bridge)
{
 struct tc_data *tc = bridge_to_tc(bridge);
 int ret;

 drm_panel_disable(tc->panel);

 ret = tc_stream_disable(tc);
 if (ret < 0)
  dev_err(tc->dev, "main link stream stop error: %d\n", ret);

 ret = tc_main_link_disable(tc);
 if (ret < 0)
  dev_err(tc->dev, "main link disable error: %d\n", ret);
}
