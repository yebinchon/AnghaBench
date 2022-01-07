
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {int dummy; } ;


 int DSI_PHY_RSTZ ;
 int DSI_PWR_UP ;
 int PHY_RSTZ ;
 int RESET ;
 int dsi_write (struct dw_mipi_dsi*,int ,int ) ;

__attribute__((used)) static void dw_mipi_dsi_disable(struct dw_mipi_dsi *dsi)
{
 dsi_write(dsi, DSI_PWR_UP, RESET);
 dsi_write(dsi, DSI_PHY_RSTZ, PHY_RSTZ);
}
