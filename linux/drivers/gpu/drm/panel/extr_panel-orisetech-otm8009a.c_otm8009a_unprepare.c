
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otm8009a {int prepared; int supply; scalar_t__ reset_gpio; } ;
struct drm_panel {int dummy; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int msleep (int) ;
 struct otm8009a* panel_to_otm8009a (struct drm_panel*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int otm8009a_unprepare(struct drm_panel *panel)
{
 struct otm8009a *ctx = panel_to_otm8009a(panel);

 if (!ctx->prepared)
  return 0;

 if (ctx->reset_gpio) {
  gpiod_set_value_cansleep(ctx->reset_gpio, 1);
  msleep(20);
 }

 regulator_disable(ctx->supply);

 ctx->prepared = 0;

 return 0;
}
