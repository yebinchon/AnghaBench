
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {int dummy; } ;


 int DSI_BTA_TO_CNT ;
 int DSI_MODE_CFG ;
 int DSI_TO_CNT_CFG ;
 int ENABLE_CMD_MODE ;
 int HSTX_TO_CNT (int) ;
 int LPRX_TO_CNT (int) ;
 int dsi_write (struct dw_mipi_dsi*,int ,int) ;

__attribute__((used)) static void dw_mipi_dsi_command_mode_config(struct dw_mipi_dsi *dsi)
{





 dsi_write(dsi, DSI_TO_CNT_CFG, HSTX_TO_CNT(1000) | LPRX_TO_CNT(1000));





 dsi_write(dsi, DSI_BTA_TO_CNT, 0xd00);
 dsi_write(dsi, DSI_MODE_CFG, ENABLE_CMD_MODE);
}
