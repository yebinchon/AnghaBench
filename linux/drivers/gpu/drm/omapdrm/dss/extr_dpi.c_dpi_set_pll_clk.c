
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lck_div; int pck_div; } ;
struct TYPE_4__ {TYPE_2__ clock_info; } ;
struct dpi_data {TYPE_1__ mgr_config; int clk_src; int dss; int pll; } ;
struct TYPE_6__ {unsigned long* clkout; } ;
struct dpi_clk_calc_ctx {size_t clkout_idx; TYPE_2__ dispc_cinfo; TYPE_3__ pll_cinfo; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int EINVAL ;
 int dpi_pll_clk_calc (struct dpi_data*,unsigned long,struct dpi_clk_calc_ctx*) ;
 int dss_pll_set_config (int ,TYPE_3__*) ;
 int dss_select_lcd_clk_source (int ,int,int ) ;

__attribute__((used)) static int dpi_set_pll_clk(struct dpi_data *dpi, enum omap_channel channel,
  unsigned long pck_req, unsigned long *fck, int *lck_div,
  int *pck_div)
{
 struct dpi_clk_calc_ctx ctx;
 int r;
 bool ok;

 ok = dpi_pll_clk_calc(dpi, pck_req, &ctx);
 if (!ok)
  return -EINVAL;

 r = dss_pll_set_config(dpi->pll, &ctx.pll_cinfo);
 if (r)
  return r;

 dss_select_lcd_clk_source(dpi->dss, channel, dpi->clk_src);

 dpi->mgr_config.clock_info = ctx.dispc_cinfo;

 *fck = ctx.pll_cinfo.clkout[ctx.clkout_idx];
 *lck_div = ctx.dispc_cinfo.lck_div;
 *pck_div = ctx.dispc_cinfo.pck_div;

 return 0;
}
