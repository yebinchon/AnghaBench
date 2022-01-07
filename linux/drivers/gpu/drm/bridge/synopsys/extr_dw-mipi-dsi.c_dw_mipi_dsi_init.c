
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mipi_dsi {int lane_mbps; } ;


 int DSI_CLKMGR_CFG ;
 int DSI_PWR_UP ;
 int RESET ;
 int TO_CLK_DIVISION (int) ;
 int TX_ESC_CLK_DIVISION (int) ;
 int dsi_write (struct dw_mipi_dsi*,int ,int) ;

__attribute__((used)) static void dw_mipi_dsi_init(struct dw_mipi_dsi *dsi)
{
 u32 esc_clk_division = (dsi->lane_mbps >> 3) / 20 + 1;

 dsi_write(dsi, DSI_PWR_UP, RESET);






 dsi_write(dsi, DSI_CLKMGR_CFG, TO_CLK_DIVISION(10) |
    TX_ESC_CLK_DIVISION(esc_clk_division));
}
