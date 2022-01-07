
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {int dss_clk; int module_id; int dss; } ;
typedef enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;


 int DSS_CLK_SRC_FCK ;
 unsigned long clk_get_rate (int ) ;
 unsigned long dsi_get_pll_hsdiv_dsi_rate (struct dsi_data*) ;
 int dss_get_dsi_clk_source (int ,int ) ;

__attribute__((used)) static unsigned long dsi_fclk_rate(struct dsi_data *dsi)
{
 unsigned long r;
 enum dss_clk_source source;

 source = dss_get_dsi_clk_source(dsi->dss, dsi->module_id);
 if (source == DSS_CLK_SRC_FCK) {

  r = clk_get_rate(dsi->dss_clk);
 } else {

  r = dsi_get_pll_hsdiv_dsi_rate(dsi);
 }

 return r;
}
