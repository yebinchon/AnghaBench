
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int n; int m; unsigned long fint; unsigned long clkdco; } ;
struct dpi_clk_calc_ctx {TYPE_1__* dpi; int pck_min; TYPE_2__ pll_cinfo; } ;
struct TYPE_3__ {int dss; int pll; } ;


 int dpi_calc_hsdiv_cb ;
 int dss_get_max_fck_rate (int ) ;
 int dss_pll_hsdiv_calc_a (int ,unsigned long,int ,int ,int ,struct dpi_clk_calc_ctx*) ;

__attribute__((used)) static bool dpi_calc_pll_cb(int n, int m, unsigned long fint,
  unsigned long clkdco,
  void *data)
{
 struct dpi_clk_calc_ctx *ctx = data;

 ctx->pll_cinfo.n = n;
 ctx->pll_cinfo.m = m;
 ctx->pll_cinfo.fint = fint;
 ctx->pll_cinfo.clkdco = clkdco;

 return dss_pll_hsdiv_calc_a(ctx->dpi->pll, clkdco,
  ctx->pck_min, dss_get_max_fck_rate(ctx->dpi->dss),
  dpi_calc_hsdiv_cb, ctx);
}
