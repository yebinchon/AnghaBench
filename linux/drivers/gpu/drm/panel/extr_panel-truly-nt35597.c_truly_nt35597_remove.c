
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct truly_nt35597 {int panel; scalar_t__* dsi; } ;
struct mipi_dsi_device {int dummy; } ;


 int drm_panel_remove (int *) ;
 int mipi_dsi_detach (scalar_t__) ;
 int mipi_dsi_device_unregister (scalar_t__) ;
 struct truly_nt35597* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static int truly_nt35597_remove(struct mipi_dsi_device *dsi)
{
 struct truly_nt35597 *ctx = mipi_dsi_get_drvdata(dsi);

 if (ctx->dsi[0])
  mipi_dsi_detach(ctx->dsi[0]);
 if (ctx->dsi[1]) {
  mipi_dsi_detach(ctx->dsi[1]);
  mipi_dsi_device_unregister(ctx->dsi[1]);
 }

 drm_panel_remove(&ctx->panel);
 return 0;
}
