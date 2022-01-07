
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dsi {int mipi; } ;


 int DSI_PAD_CONTROL_0 ;
 int DSI_PAD_CONTROL_1 ;
 int DSI_PAD_CONTROL_2 ;
 int DSI_PAD_CONTROL_3 ;
 int DSI_PAD_CONTROL_4 ;
 int DSI_PAD_LP_DN (int) ;
 int DSI_PAD_LP_UP (int) ;
 int DSI_PAD_OUT_CLK (int) ;
 int DSI_PAD_PREEMP_PD (int) ;
 int DSI_PAD_PREEMP_PD_CLK (int) ;
 int DSI_PAD_PREEMP_PU (int) ;
 int DSI_PAD_PREEMP_PU_CLK (int) ;
 int DSI_PAD_SLEW_DN (int) ;
 int DSI_PAD_SLEW_UP (int) ;
 int tegra_dsi_pad_enable (struct tegra_dsi*) ;
 int tegra_dsi_writel (struct tegra_dsi*,int,int ) ;
 int tegra_mipi_calibrate (int ) ;

__attribute__((used)) static int tegra_dsi_pad_calibrate(struct tegra_dsi *dsi)
{
 u32 value;





 tegra_dsi_writel(dsi, 0, DSI_PAD_CONTROL_0);
 tegra_dsi_writel(dsi, 0, DSI_PAD_CONTROL_1);
 tegra_dsi_writel(dsi, 0, DSI_PAD_CONTROL_2);
 tegra_dsi_writel(dsi, 0, DSI_PAD_CONTROL_3);
 tegra_dsi_writel(dsi, 0, DSI_PAD_CONTROL_4);


 tegra_dsi_pad_enable(dsi);

 value = DSI_PAD_SLEW_UP(0x7) | DSI_PAD_SLEW_DN(0x7) |
  DSI_PAD_LP_UP(0x1) | DSI_PAD_LP_DN(0x1) |
  DSI_PAD_OUT_CLK(0x0);
 tegra_dsi_writel(dsi, value, DSI_PAD_CONTROL_2);

 value = DSI_PAD_PREEMP_PD_CLK(0x3) | DSI_PAD_PREEMP_PU_CLK(0x3) |
  DSI_PAD_PREEMP_PD(0x03) | DSI_PAD_PREEMP_PU(0x3);
 tegra_dsi_writel(dsi, value, DSI_PAD_CONTROL_3);

 return tegra_mipi_calibrate(dsi->mipi);
}
