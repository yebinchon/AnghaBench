
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {int dummy; } ;


 int DSI_PHY_RSTZ ;
 int DSI_PHY_TST_CTRL0 ;
 int PHY_DISABLECLK ;
 int PHY_DISFORCEPLL ;
 int PHY_RSTZ ;
 int PHY_SHUTDOWNZ ;
 int PHY_TESTCLR ;
 int PHY_UNTESTCLR ;
 int dsi_write (struct dw_mipi_dsi*,int ,int) ;

__attribute__((used)) static void dw_mipi_dsi_dphy_init(struct dw_mipi_dsi *dsi)
{

 dsi_write(dsi, DSI_PHY_RSTZ, PHY_DISFORCEPLL | PHY_DISABLECLK
    | PHY_RSTZ | PHY_SHUTDOWNZ);
 dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
 dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLR);
 dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
}
