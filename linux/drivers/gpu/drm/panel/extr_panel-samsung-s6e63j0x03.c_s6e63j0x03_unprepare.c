
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s6e63j0x03 {TYPE_2__* bl_dev; } ;
struct drm_panel {int dummy; } ;
struct TYPE_3__ {int power; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int FB_BLANK_POWERDOWN ;
 struct s6e63j0x03* panel_to_s6e63j0x03 (struct drm_panel*) ;
 int s6e63j0x03_power_off (struct s6e63j0x03*) ;

__attribute__((used)) static int s6e63j0x03_unprepare(struct drm_panel *panel)
{
 struct s6e63j0x03 *ctx = panel_to_s6e63j0x03(panel);
 int ret;

 ret = s6e63j0x03_power_off(ctx);
 if (ret < 0)
  return ret;

 ctx->bl_dev->props.power = FB_BLANK_POWERDOWN;

 return 0;
}
