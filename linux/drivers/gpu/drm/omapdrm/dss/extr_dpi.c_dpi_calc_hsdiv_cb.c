
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* mX; unsigned long* clkout; } ;
struct dpi_clk_calc_ctx {size_t clkout_idx; int pck_max; int pck_min; TYPE_3__* dpi; TYPE_1__ pll_cinfo; } ;
struct TYPE_6__ {TYPE_2__* dss; } ;
struct TYPE_5__ {int dispc; } ;


 int dispc_div_calc (int ,unsigned long,int ,int ,int ,struct dpi_clk_calc_ctx*) ;
 int dpi_calc_dispc_cb ;

__attribute__((used)) static bool dpi_calc_hsdiv_cb(int m_dispc, unsigned long dispc,
  void *data)
{
 struct dpi_clk_calc_ctx *ctx = data;

 ctx->pll_cinfo.mX[ctx->clkout_idx] = m_dispc;
 ctx->pll_cinfo.clkout[ctx->clkout_idx] = dispc;

 return dispc_div_calc(ctx->dpi->dss->dispc, dispc,
         ctx->pck_min, ctx->pck_max,
         dpi_calc_dispc_cb, ctx);
}
