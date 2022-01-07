
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mipi_dsi {int dummy; } ;


 int DSI_PHY_TMR_CFG ;
 int DSI_PHY_TMR_LPCLK_CFG ;
 int DSI_PHY_TMR_RD_CFG ;
 int DSI_VERSION ;
 int HWVER_131 ;
 int MAX_RD_TIME (int) ;
 int MAX_RD_TIME_V131 (int) ;
 int PHY_CLKHS2LP_TIME (int) ;
 int PHY_CLKLP2HS_TIME (int) ;
 int PHY_HS2LP_TIME (int) ;
 int PHY_HS2LP_TIME_V131 (int) ;
 int PHY_LP2HS_TIME (int) ;
 int PHY_LP2HS_TIME_V131 (int) ;
 int VERSION ;
 int dsi_read (struct dw_mipi_dsi*,int ) ;
 int dsi_write (struct dw_mipi_dsi*,int ,int) ;

__attribute__((used)) static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
{
 u32 hw_version;
 hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;

 if (hw_version >= HWVER_131) {
  dsi_write(dsi, DSI_PHY_TMR_CFG, PHY_HS2LP_TIME_V131(0x40) |
     PHY_LP2HS_TIME_V131(0x40));
  dsi_write(dsi, DSI_PHY_TMR_RD_CFG, MAX_RD_TIME_V131(10000));
 } else {
  dsi_write(dsi, DSI_PHY_TMR_CFG, PHY_HS2LP_TIME(0x40) |
     PHY_LP2HS_TIME(0x40) | MAX_RD_TIME(10000));
 }

 dsi_write(dsi, DSI_PHY_TMR_LPCLK_CFG, PHY_CLKHS2LP_TIME(0x40)
    | PHY_CLKLP2HS_TIME(0x40));
}
