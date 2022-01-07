
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dsi_data {TYPE_1__* data; } ;
struct TYPE_4__ {int n; int m; unsigned long fint; unsigned long clkdco; } ;
struct dsi_clk_calc_ctx {int req_pck_min; int pll; TYPE_2__ dsi_cinfo; struct dsi_data* dsi; } ;
struct TYPE_3__ {int max_fck_freq; } ;


 int dsi_vm_calc_hsdiv_cb ;
 int dss_pll_hsdiv_calc_a (int ,unsigned long,int ,int ,int ,struct dsi_clk_calc_ctx*) ;

__attribute__((used)) static bool dsi_vm_calc_pll_cb(int n, int m, unsigned long fint,
  unsigned long clkdco, void *data)
{
 struct dsi_clk_calc_ctx *ctx = data;
 struct dsi_data *dsi = ctx->dsi;

 ctx->dsi_cinfo.n = n;
 ctx->dsi_cinfo.m = m;
 ctx->dsi_cinfo.fint = fint;
 ctx->dsi_cinfo.clkdco = clkdco;

 return dss_pll_hsdiv_calc_a(ctx->pll, clkdco, ctx->req_pck_min,
   dsi->data->max_fck_freq,
   dsi_vm_calc_hsdiv_cb, ctx);
}
