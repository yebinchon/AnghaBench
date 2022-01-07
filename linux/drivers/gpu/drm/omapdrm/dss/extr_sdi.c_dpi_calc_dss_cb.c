
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdi_clk_calc_ctx {unsigned long fck; int pck_max; int pck_min; TYPE_2__* sdi; } ;
struct TYPE_4__ {TYPE_1__* dss; } ;
struct TYPE_3__ {int dispc; } ;


 int dispc_div_calc (int ,unsigned long,int ,int ,int ,struct sdi_clk_calc_ctx*) ;
 int dpi_calc_dispc_cb ;

__attribute__((used)) static bool dpi_calc_dss_cb(unsigned long fck, void *data)
{
 struct sdi_clk_calc_ctx *ctx = data;

 ctx->fck = fck;

 return dispc_div_calc(ctx->sdi->dss->dispc, fck,
         ctx->pck_min, ctx->pck_max,
         dpi_calc_dispc_cb, ctx);
}
