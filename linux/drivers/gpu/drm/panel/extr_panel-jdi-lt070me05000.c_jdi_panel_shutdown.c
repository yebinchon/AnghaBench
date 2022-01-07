
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dummy; } ;
struct jdi_panel {int base; } ;


 int jdi_panel_disable (int *) ;
 struct jdi_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static void jdi_panel_shutdown(struct mipi_dsi_device *dsi)
{
 struct jdi_panel *jdi = mipi_dsi_get_drvdata(dsi);

 jdi_panel_disable(&jdi->base);
}
