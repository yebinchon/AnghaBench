
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld9040 {int dummy; } ;
struct drm_panel {int dummy; } ;


 int MIPI_DCS_ENTER_SLEEP_MODE ;
 int MIPI_DCS_SET_DISPLAY_OFF ;
 int ld9040_clear_error (struct ld9040*) ;
 int ld9040_dcs_write_seq_static (struct ld9040*,int ) ;
 int ld9040_power_off (struct ld9040*) ;
 int msleep (int) ;
 struct ld9040* panel_to_ld9040 (struct drm_panel*) ;

__attribute__((used)) static int ld9040_unprepare(struct drm_panel *panel)
{
 struct ld9040 *ctx = panel_to_ld9040(panel);

 msleep(120);
 ld9040_dcs_write_seq_static(ctx, MIPI_DCS_SET_DISPLAY_OFF);
 ld9040_dcs_write_seq_static(ctx, MIPI_DCS_ENTER_SLEEP_MODE);
 msleep(40);

 ld9040_clear_error(ctx);

 return ld9040_power_off(ctx);
}
