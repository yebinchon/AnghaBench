
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wuxga_nt_panel {int dsi; } ;


 int mipi_dsi_turn_on_peripheral (int ) ;

__attribute__((used)) static int wuxga_nt_panel_on(struct wuxga_nt_panel *wuxga_nt)
{
 return mipi_dsi_turn_on_peripheral(wuxga_nt->dsi);
}
