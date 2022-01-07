
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {int vdds_dsi_enabled; int vdds_dsi_reg; int pll; int module_id; int dss; int ulps_enabled; } ;


 int DSS_CLK_SRC_FCK ;
 int dsi_cio_uninit (struct dsi_data*) ;
 int dsi_enter_ulps (struct dsi_data*) ;
 int dsi_if_enable (struct dsi_data*,int ) ;
 int dsi_vc_enable (struct dsi_data*,int,int ) ;
 int dss_pll_disable (int *) ;
 int dss_select_dsi_clk_source (int ,int ,int ) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void dsi_display_uninit_dsi(struct dsi_data *dsi, bool disconnect_lanes,
       bool enter_ulps)
{
 if (enter_ulps && !dsi->ulps_enabled)
  dsi_enter_ulps(dsi);


 dsi_if_enable(dsi, 0);
 dsi_vc_enable(dsi, 0, 0);
 dsi_vc_enable(dsi, 1, 0);
 dsi_vc_enable(dsi, 2, 0);
 dsi_vc_enable(dsi, 3, 0);

 dss_select_dsi_clk_source(dsi->dss, dsi->module_id, DSS_CLK_SRC_FCK);
 dsi_cio_uninit(dsi);
 dss_pll_disable(&dsi->pll);

 if (disconnect_lanes) {
  regulator_disable(dsi->vdds_dsi_reg);
  dsi->vdds_dsi_enabled = 0;
 }
}
