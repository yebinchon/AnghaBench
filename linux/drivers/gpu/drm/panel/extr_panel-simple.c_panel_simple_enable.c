
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct panel_simple {int enabled; TYPE_4__* backlight; TYPE_3__* desc; } ;
struct drm_panel {int dummy; } ;
struct TYPE_5__ {int power; int state; } ;
struct TYPE_8__ {TYPE_1__ props; } ;
struct TYPE_6__ {scalar_t__ enable; } ;
struct TYPE_7__ {TYPE_2__ delay; } ;


 int BL_CORE_FBBLANK ;
 int FB_BLANK_UNBLANK ;
 int backlight_update_status (TYPE_4__*) ;
 int msleep (scalar_t__) ;
 struct panel_simple* to_panel_simple (struct drm_panel*) ;

__attribute__((used)) static int panel_simple_enable(struct drm_panel *panel)
{
 struct panel_simple *p = to_panel_simple(panel);

 if (p->enabled)
  return 0;

 if (p->desc->delay.enable)
  msleep(p->desc->delay.enable);

 if (p->backlight) {
  p->backlight->props.state &= ~BL_CORE_FBBLANK;
  p->backlight->props.power = FB_BLANK_UNBLANK;
  backlight_update_status(p->backlight);
 }

 p->enabled = 1;

 return 0;
}
