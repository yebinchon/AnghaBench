
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptn3460_bridge {int enabled; int gpio_pd_n; int gpio_rst_n; int panel; } ;
struct drm_bridge {int dummy; } ;


 int DRM_ERROR (char*) ;
 struct ptn3460_bridge* bridge_to_ptn3460 (struct drm_bridge*) ;
 scalar_t__ drm_panel_disable (int ) ;
 int gpiod_set_value (int ,int) ;

__attribute__((used)) static void ptn3460_disable(struct drm_bridge *bridge)
{
 struct ptn3460_bridge *ptn_bridge = bridge_to_ptn3460(bridge);

 if (!ptn_bridge->enabled)
  return;

 ptn_bridge->enabled = 0;

 if (drm_panel_disable(ptn_bridge->panel)) {
  DRM_ERROR("failed to disable panel\n");
  return;
 }

 gpiod_set_value(ptn_bridge->gpio_rst_n, 1);
 gpiod_set_value(ptn_bridge->gpio_pd_n, 0);
}
