
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dsi {int dummy; } ;


 int DSI_PAD_CONTROL_0 ;
 int DSI_PAD_CONTROL_VS1_PDIO (int ) ;
 int DSI_PAD_CONTROL_VS1_PULLDN (int ) ;
 int tegra_dsi_writel (struct tegra_dsi*,int,int ) ;

__attribute__((used)) static int tegra_dsi_pad_enable(struct tegra_dsi *dsi)
{
 u32 value;

 value = DSI_PAD_CONTROL_VS1_PULLDN(0) | DSI_PAD_CONTROL_VS1_PDIO(0);
 tegra_dsi_writel(dsi, value, DSI_PAD_CONTROL_0);

 return 0;
}
