
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6d16d0 {int panel; } ;
struct mipi_dsi_device {int dummy; } ;


 int drm_panel_remove (int *) ;
 int mipi_dsi_detach (struct mipi_dsi_device*) ;
 struct s6d16d0* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static int s6d16d0_remove(struct mipi_dsi_device *dsi)
{
 struct s6d16d0 *s6 = mipi_dsi_get_drvdata(dsi);

 mipi_dsi_detach(dsi);
 drm_panel_remove(&s6->panel);

 return 0;
}
