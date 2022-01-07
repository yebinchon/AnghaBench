
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct innolux_panel {int enabled; int backlight; } ;
struct drm_panel {int dummy; } ;


 int backlight_disable (int ) ;
 struct innolux_panel* to_innolux_panel (struct drm_panel*) ;

__attribute__((used)) static int innolux_panel_disable(struct drm_panel *panel)
{
 struct innolux_panel *innolux = to_innolux_panel(panel);

 if (!innolux->enabled)
  return 0;

 backlight_disable(innolux->backlight);

 innolux->enabled = 0;

 return 0;
}
