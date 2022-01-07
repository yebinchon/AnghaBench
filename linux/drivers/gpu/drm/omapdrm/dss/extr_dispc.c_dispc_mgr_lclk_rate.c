
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* clkout; } ;
struct dss_pll {TYPE_1__ cinfo; } ;
struct dispc_device {int dss; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
typedef enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;


 int DISPC_DIVISORo (int) ;
 int DSS_CLK_SRC_FCK ;
 int REG_GET (struct dispc_device*,int ,int,int) ;
 unsigned long dispc_fclk_rate (struct dispc_device*) ;
 unsigned long dss_get_dispc_clk_rate (int ) ;
 int dss_get_lcd_clk_source (int ,int) ;
 int dss_mgr_is_lcd (int) ;
 struct dss_pll* dss_pll_find_by_src (int ,int) ;
 unsigned int dss_pll_get_clkout_idx_for_src (int) ;

__attribute__((used)) static unsigned long dispc_mgr_lclk_rate(struct dispc_device *dispc,
      enum omap_channel channel)
{
 int lcd;
 unsigned long r;
 enum dss_clk_source src;


 if (!dss_mgr_is_lcd(channel))
  return dispc_fclk_rate(dispc);

 src = dss_get_lcd_clk_source(dispc->dss, channel);

 if (src == DSS_CLK_SRC_FCK) {
  r = dss_get_dispc_clk_rate(dispc->dss);
 } else {
  struct dss_pll *pll;
  unsigned int clkout_idx;

  pll = dss_pll_find_by_src(dispc->dss, src);
  clkout_idx = dss_pll_get_clkout_idx_for_src(src);

  r = pll->cinfo.clkout[clkout_idx];
 }

 lcd = REG_GET(dispc, DISPC_DIVISORo(channel), 23, 16);

 return r / lcd;
}
