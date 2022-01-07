
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {scalar_t__ scp_clk_refcount; } ;


 int DSI_CLK_CTRL ;
 int REG_FLD_MOD (struct dsi_data*,int ,int ,int,int) ;
 int WARN_ON (int) ;

__attribute__((used)) static void dsi_disable_scp_clk(struct dsi_data *dsi)
{
 WARN_ON(dsi->scp_clk_refcount == 0);
 if (--dsi->scp_clk_refcount == 0)
  REG_FLD_MOD(dsi, DSI_CLK_CTRL, 0, 14, 14);
}
