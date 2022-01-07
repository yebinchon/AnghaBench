
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct panel_simple {int enabled; TYPE_2__* desc; TYPE_4__* backlight; } ;
struct drm_panel {int dummy; } ;
struct TYPE_7__ {int state; int power; } ;
struct TYPE_8__ {TYPE_3__ props; } ;
struct TYPE_5__ {scalar_t__ disable; } ;
struct TYPE_6__ {TYPE_1__ delay; } ;


 int BL_CORE_FBBLANK ;
 int FB_BLANK_POWERDOWN ;
 int backlight_update_status (TYPE_4__*) ;
 int msleep (scalar_t__) ;
 struct panel_simple* to_panel_simple (struct drm_panel*) ;

__attribute__((used)) static int panel_simple_disable(struct drm_panel *panel)
{
 struct panel_simple *p = to_panel_simple(panel);

 if (!p->enabled)
  return 0;

 if (p->backlight) {
  p->backlight->props.power = FB_BLANK_POWERDOWN;
  p->backlight->props.state |= BL_CORE_FBBLANK;
  backlight_update_status(p->backlight);
 }

 if (p->desc->delay.disable)
  msleep(p->desc->delay.disable);

 p->enabled = 0;

 return 0;
}
