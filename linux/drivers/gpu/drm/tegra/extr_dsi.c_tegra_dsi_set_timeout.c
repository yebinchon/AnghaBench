
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dsi {struct tegra_dsi* slave; } ;


 int DSI_TALLY_HTX (int ) ;
 int DSI_TALLY_LRX (int ) ;
 int DSI_TALLY_TA (int ) ;
 int DSI_TIMEOUT_0 ;
 int DSI_TIMEOUT_1 ;
 int DSI_TIMEOUT_HTX (unsigned int) ;
 int DSI_TIMEOUT_LRX (int) ;
 int DSI_TIMEOUT_PR (unsigned int) ;
 int DSI_TIMEOUT_TA (int) ;
 int DSI_TO_TALLY ;
 int tegra_dsi_writel (struct tegra_dsi*,int,int ) ;

__attribute__((used)) static void tegra_dsi_set_timeout(struct tegra_dsi *dsi, unsigned long bclk,
      unsigned int vrefresh)
{
 unsigned int timeout;
 u32 value;


 timeout = (bclk / vrefresh) / 512;
 value = DSI_TIMEOUT_LRX(0x2000) | DSI_TIMEOUT_HTX(timeout);
 tegra_dsi_writel(dsi, value, DSI_TIMEOUT_0);


 timeout = 2 * bclk / 512 * 1000;
 value = DSI_TIMEOUT_PR(timeout) | DSI_TIMEOUT_TA(0x2000);
 tegra_dsi_writel(dsi, value, DSI_TIMEOUT_1);

 value = DSI_TALLY_TA(0) | DSI_TALLY_LRX(0) | DSI_TALLY_HTX(0);
 tegra_dsi_writel(dsi, value, DSI_TO_TALLY);

 if (dsi->slave)
  tegra_dsi_set_timeout(dsi->slave, bclk, vrefresh);
}
