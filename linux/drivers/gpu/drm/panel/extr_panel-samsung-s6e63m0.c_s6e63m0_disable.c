
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e63m0 {int enabled; int bl_dev; } ;
struct drm_panel {int dummy; } ;


 int MIPI_DCS_ENTER_SLEEP_MODE ;
 int backlight_disable (int ) ;
 int msleep (int) ;
 struct s6e63m0* panel_to_s6e63m0 (struct drm_panel*) ;
 int s6e63m0_dcs_write_seq_static (struct s6e63m0*,int ) ;

__attribute__((used)) static int s6e63m0_disable(struct drm_panel *panel)
{
 struct s6e63m0 *ctx = panel_to_s6e63m0(panel);

 if (!ctx->enabled)
  return 0;

 backlight_disable(ctx->bl_dev);

 s6e63m0_dcs_write_seq_static(ctx, MIPI_DCS_ENTER_SLEEP_MODE);
 msleep(200);

 ctx->enabled = 0;

 return 0;
}
