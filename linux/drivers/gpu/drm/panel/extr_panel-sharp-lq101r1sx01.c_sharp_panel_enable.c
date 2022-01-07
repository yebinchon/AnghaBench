
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharp_panel {int enabled; int backlight; } ;
struct drm_panel {int dummy; } ;


 int backlight_enable (int ) ;
 struct sharp_panel* to_sharp_panel (struct drm_panel*) ;

__attribute__((used)) static int sharp_panel_enable(struct drm_panel *panel)
{
 struct sharp_panel *sharp = to_sharp_panel(panel);

 if (sharp->enabled)
  return 0;

 backlight_enable(sharp->backlight);

 sharp->enabled = 1;

 return 0;
}
