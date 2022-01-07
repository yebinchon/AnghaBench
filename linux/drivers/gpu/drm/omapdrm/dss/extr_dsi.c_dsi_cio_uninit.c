
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {int dummy; } ;


 int DSI_CLK_CTRL ;
 int DSI_COMPLEXIO_POWER_OFF ;
 int REG_FLD_MOD (struct dsi_data*,int ,int ,int,int) ;
 int dsi_cio_power (struct dsi_data*,int ) ;
 int dsi_disable_pads (struct dsi_data*) ;
 int dsi_disable_scp_clk (struct dsi_data*) ;

__attribute__((used)) static void dsi_cio_uninit(struct dsi_data *dsi)
{

 REG_FLD_MOD(dsi, DSI_CLK_CTRL, 0, 13, 13);

 dsi_cio_power(dsi, DSI_COMPLEXIO_POWER_OFF);
 dsi_disable_scp_clk(dsi);
 dsi_disable_pads(dsi);
}
