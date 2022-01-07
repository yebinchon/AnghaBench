
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dw_mipi_dsi_rockchip {int dummy; } ;


 int DSI_PHY_TST_CTRL0 ;
 int DSI_PHY_TST_CTRL1 ;
 int PHY_TESTCLK ;
 int PHY_TESTDIN (int ) ;
 int PHY_TESTDOUT (int ) ;
 int PHY_TESTEN ;
 int PHY_UNTESTCLK ;
 int PHY_UNTESTCLR ;
 int PHY_UNTESTEN ;
 int dsi_write (struct dw_mipi_dsi_rockchip*,int ,int) ;

__attribute__((used)) static void dw_mipi_dsi_phy_write(struct dw_mipi_dsi_rockchip *dsi,
      u8 test_code,
      u8 test_data)
{





 dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);

 dsi_write(dsi, DSI_PHY_TST_CTRL1, PHY_TESTEN | PHY_TESTDOUT(0) |
       PHY_TESTDIN(test_code));

 dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLK | PHY_UNTESTCLR);

 dsi_write(dsi, DSI_PHY_TST_CTRL1, PHY_UNTESTEN | PHY_TESTDOUT(0) |
       PHY_TESTDIN(test_data));

 dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
}
