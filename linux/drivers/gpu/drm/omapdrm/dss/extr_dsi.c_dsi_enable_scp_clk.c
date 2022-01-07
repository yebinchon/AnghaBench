
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {int scp_clk_refcount; } ;


 int DSI_CLK_CTRL ;
 int REG_FLD_MOD (struct dsi_data*,int ,int,int,int) ;

__attribute__((used)) static void dsi_enable_scp_clk(struct dsi_data *dsi)
{
 if (dsi->scp_clk_refcount++ == 0)
  REG_FLD_MOD(dsi, DSI_CLK_CTRL, 1, 14, 14);
}
