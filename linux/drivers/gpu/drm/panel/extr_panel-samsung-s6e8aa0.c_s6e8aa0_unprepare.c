
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e8aa0 {int dummy; } ;
struct drm_panel {int dummy; } ;


 int MIPI_DCS_ENTER_SLEEP_MODE ;
 int MIPI_DCS_SET_DISPLAY_OFF ;
 int msleep (int) ;
 struct s6e8aa0* panel_to_s6e8aa0 (struct drm_panel*) ;
 int s6e8aa0_clear_error (struct s6e8aa0*) ;
 int s6e8aa0_dcs_write_seq_static (struct s6e8aa0*,int ) ;
 int s6e8aa0_power_off (struct s6e8aa0*) ;

__attribute__((used)) static int s6e8aa0_unprepare(struct drm_panel *panel)
{
 struct s6e8aa0 *ctx = panel_to_s6e8aa0(panel);

 s6e8aa0_dcs_write_seq_static(ctx, MIPI_DCS_ENTER_SLEEP_MODE);
 s6e8aa0_dcs_write_seq_static(ctx, MIPI_DCS_SET_DISPLAY_OFF);
 msleep(40);

 s6e8aa0_clear_error(ctx);

 return s6e8aa0_power_off(ctx);
}
