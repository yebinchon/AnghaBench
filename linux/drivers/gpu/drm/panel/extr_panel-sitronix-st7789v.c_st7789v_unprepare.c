
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st7789v {int power; } ;
struct drm_panel {int dummy; } ;


 int MIPI_DCS_ENTER_SLEEP_MODE ;
 int ST7789V_TEST (int,int ) ;
 struct st7789v* panel_to_st7789v (struct drm_panel*) ;
 int regulator_disable (int ) ;
 int st7789v_write_command (struct st7789v*,int ) ;

__attribute__((used)) static int st7789v_unprepare(struct drm_panel *panel)
{
 struct st7789v *ctx = panel_to_st7789v(panel);
 int ret;

 ST7789V_TEST(ret, st7789v_write_command(ctx, MIPI_DCS_ENTER_SLEEP_MODE));

 regulator_disable(ctx->power);

 return 0;
}
