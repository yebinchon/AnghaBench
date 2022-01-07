
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wuxga_nt_panel {int base; } ;
struct mipi_dsi_device {int dummy; } ;


 struct wuxga_nt_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;
 int wuxga_nt_panel_disable (int *) ;

__attribute__((used)) static void wuxga_nt_panel_shutdown(struct mipi_dsi_device *dsi)
{
 struct wuxga_nt_panel *wuxga_nt = mipi_dsi_get_drvdata(dsi);

 wuxga_nt_panel_disable(&wuxga_nt->base);
}
