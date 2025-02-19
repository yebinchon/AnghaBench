
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st7701 {int panel; } ;
struct mipi_dsi_device {int dummy; } ;


 int drm_panel_remove (int *) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct st7701* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static int st7701_dsi_remove(struct mipi_dsi_device *dsi)
{
 struct st7701 *st7701 = mipi_dsi_get_drvdata(dsi);

 mipi_dsi_detach(dsi);
 drm_panel_remove(&st7701->panel);

 return 0;
}
