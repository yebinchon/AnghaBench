
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dpi_data {TYPE_3__* pll; int clk_src; } ;
struct TYPE_7__ {int lck_div; int pck_div; int lck; int pck; } ;
struct TYPE_9__ {int * clkout; } ;
struct dpi_clk_calc_ctx {unsigned long pck_min; unsigned long pck_max; TYPE_2__ dispc_cinfo; TYPE_4__ pll_cinfo; struct dpi_data* dpi; int clkout_idx; } ;
struct TYPE_8__ {TYPE_1__* hw; int clkin; } ;
struct TYPE_6__ {scalar_t__ type; } ;


 scalar_t__ DSS_PLL_TYPE_A ;
 unsigned long clk_get_rate (int ) ;
 int dpi_calc_pll_cb ;
 int dss_pll_calc_a (TYPE_3__*,unsigned long,unsigned long,unsigned long,int ,struct dpi_clk_calc_ctx*) ;
 int dss_pll_calc_b (TYPE_3__*,unsigned long,unsigned long,TYPE_4__*) ;
 int dss_pll_get_clkout_idx_for_src (int ) ;
 int memset (struct dpi_clk_calc_ctx*,int ,int) ;

__attribute__((used)) static bool dpi_pll_clk_calc(struct dpi_data *dpi, unsigned long pck,
  struct dpi_clk_calc_ctx *ctx)
{
 unsigned long clkin;

 memset(ctx, 0, sizeof(*ctx));
 ctx->dpi = dpi;
 ctx->clkout_idx = dss_pll_get_clkout_idx_for_src(dpi->clk_src);

 clkin = clk_get_rate(dpi->pll->clkin);

 if (dpi->pll->hw->type == DSS_PLL_TYPE_A) {
  unsigned long pll_min, pll_max;

  ctx->pck_min = pck - 1000;
  ctx->pck_max = pck + 1000;

  pll_min = 0;
  pll_max = 0;

  return dss_pll_calc_a(ctx->dpi->pll, clkin,
    pll_min, pll_max,
    dpi_calc_pll_cb, ctx);
 } else {
  dss_pll_calc_b(dpi->pll, clkin, pck, &ctx->pll_cinfo);

  ctx->dispc_cinfo.lck_div = 1;
  ctx->dispc_cinfo.pck_div = 1;
  ctx->dispc_cinfo.lck = ctx->pll_cinfo.clkout[0];
  ctx->dispc_cinfo.pck = ctx->dispc_cinfo.lck;

  return 1;
 }
}
