
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seiko_panel {int enabled; TYPE_2__* backlight; } ;
struct drm_panel {int dummy; } ;
struct TYPE_3__ {int state; int power; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int BL_CORE_FBBLANK ;
 int FB_BLANK_POWERDOWN ;
 int backlight_update_status (TYPE_2__*) ;
 struct seiko_panel* to_seiko_panel (struct drm_panel*) ;

__attribute__((used)) static int seiko_panel_disable(struct drm_panel *panel)
{
 struct seiko_panel *p = to_seiko_panel(panel);

 if (!p->enabled)
  return 0;

 if (p->backlight) {
  p->backlight->props.power = FB_BLANK_POWERDOWN;
  p->backlight->props.state |= BL_CORE_FBBLANK;
  backlight_update_status(p->backlight);
 }

 p->enabled = 0;

 return 0;
}
