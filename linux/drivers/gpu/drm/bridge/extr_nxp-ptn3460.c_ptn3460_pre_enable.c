
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptn3460_bridge {int enabled; int panel; int gpio_rst_n; int gpio_pd_n; } ;
struct drm_bridge {int dummy; } ;


 int DRM_ERROR (char*,...) ;
 struct ptn3460_bridge* bridge_to_ptn3460 (struct drm_bridge*) ;
 scalar_t__ drm_panel_prepare (int ) ;
 int gpiod_set_value (int ,int) ;
 int msleep (int) ;
 int ptn3460_select_edid (struct ptn3460_bridge*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ptn3460_pre_enable(struct drm_bridge *bridge)
{
 struct ptn3460_bridge *ptn_bridge = bridge_to_ptn3460(bridge);
 int ret;

 if (ptn_bridge->enabled)
  return;

 gpiod_set_value(ptn_bridge->gpio_pd_n, 1);

 gpiod_set_value(ptn_bridge->gpio_rst_n, 0);
 usleep_range(10, 20);
 gpiod_set_value(ptn_bridge->gpio_rst_n, 1);

 if (drm_panel_prepare(ptn_bridge->panel)) {
  DRM_ERROR("failed to prepare panel\n");
  return;
 }






 msleep(90);

 ret = ptn3460_select_edid(ptn_bridge);
 if (ret)
  DRM_ERROR("Select EDID failed ret=%d\n", ret);

 ptn_bridge->enabled = 1;
}
