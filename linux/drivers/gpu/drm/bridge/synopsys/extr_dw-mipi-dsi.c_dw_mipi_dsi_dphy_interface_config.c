
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {int lanes; } ;


 int DSI_PHY_IF_CFG ;
 int N_LANES (int ) ;
 int PHY_STOP_WAIT_TIME (int) ;
 int dsi_write (struct dw_mipi_dsi*,int ,int) ;

__attribute__((used)) static void dw_mipi_dsi_dphy_interface_config(struct dw_mipi_dsi *dsi)
{





 dsi_write(dsi, DSI_PHY_IF_CFG, PHY_STOP_WAIT_TIME(0x20) |
    N_LANES(dsi->lanes));
}
