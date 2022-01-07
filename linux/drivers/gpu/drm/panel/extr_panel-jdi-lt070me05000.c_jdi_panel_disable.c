
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jdi_panel {int enabled; int backlight; } ;
struct drm_panel {int dummy; } ;


 int backlight_disable (int ) ;
 struct jdi_panel* to_jdi_panel (struct drm_panel*) ;

__attribute__((used)) static int jdi_panel_disable(struct drm_panel *panel)
{
 struct jdi_panel *jdi = to_jdi_panel(panel);

 if (!jdi->enabled)
  return 0;

 backlight_disable(jdi->backlight);

 jdi->enabled = 0;

 return 0;
}
