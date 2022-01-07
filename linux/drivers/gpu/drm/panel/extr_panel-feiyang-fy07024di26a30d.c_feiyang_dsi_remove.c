
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dummy; } ;
struct feiyang {int panel; } ;


 int drm_panel_remove (int *) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct feiyang* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static int feiyang_dsi_remove(struct mipi_dsi_device *dsi)
{
 struct feiyang *ctx = mipi_dsi_get_drvdata(dsi);

 mipi_dsi_detach(dsi);
 drm_panel_remove(&ctx->panel);

 return 0;
}
