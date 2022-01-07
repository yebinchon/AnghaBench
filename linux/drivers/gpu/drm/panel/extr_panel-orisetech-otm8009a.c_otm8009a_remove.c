
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otm8009a {int panel; } ;
struct mipi_dsi_device {int dummy; } ;


 int drm_panel_remove (int *) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct otm8009a* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static int otm8009a_remove(struct mipi_dsi_device *dsi)
{
 struct otm8009a *ctx = mipi_dsi_get_drvdata(dsi);

 mipi_dsi_detach(dsi);
 drm_panel_remove(&ctx->panel);

 return 0;
}
