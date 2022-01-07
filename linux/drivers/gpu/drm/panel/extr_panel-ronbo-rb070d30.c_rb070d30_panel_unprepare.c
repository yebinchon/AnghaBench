
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int power; int reset; } ;
struct rb070d30_panel {int supply; TYPE_1__ gpios; } ;
struct drm_panel {int dummy; } ;


 int gpiod_set_value (int ,int ) ;
 struct rb070d30_panel* panel_to_rb070d30_panel (struct drm_panel*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int rb070d30_panel_unprepare(struct drm_panel *panel)
{
 struct rb070d30_panel *ctx = panel_to_rb070d30_panel(panel);

 gpiod_set_value(ctx->gpios.reset, 0);
 gpiod_set_value(ctx->gpios.power, 0);
 regulator_disable(ctx->supply);

 return 0;
}
