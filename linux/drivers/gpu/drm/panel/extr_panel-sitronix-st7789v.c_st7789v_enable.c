
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st7789v {TYPE_2__* backlight; } ;
struct drm_panel {int dummy; } ;
struct TYPE_3__ {int power; int state; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int BL_CORE_FBBLANK ;
 int FB_BLANK_UNBLANK ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int backlight_update_status (TYPE_2__*) ;
 struct st7789v* panel_to_st7789v (struct drm_panel*) ;
 int st7789v_write_command (struct st7789v*,int ) ;

__attribute__((used)) static int st7789v_enable(struct drm_panel *panel)
{
 struct st7789v *ctx = panel_to_st7789v(panel);

 if (ctx->backlight) {
  ctx->backlight->props.state &= ~BL_CORE_FBBLANK;
  ctx->backlight->props.power = FB_BLANK_UNBLANK;
  backlight_update_status(ctx->backlight);
 }

 return st7789v_write_command(ctx, MIPI_DCS_SET_DISPLAY_ON);
}
