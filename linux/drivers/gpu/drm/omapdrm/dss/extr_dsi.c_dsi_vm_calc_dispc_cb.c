
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lck_div; int pck_div; unsigned long lck; unsigned long pck; } ;
struct dsi_clk_calc_ctx {int dsi_vm; TYPE_1__* config; int vm; TYPE_2__ dispc_cinfo; } ;
struct TYPE_3__ {int * vm; } ;


 int dsi_vm_calc_blanking (struct dsi_clk_calc_ctx*) ;
 int print_dispc_vm (char*,int *) ;
 int print_dsi_dispc_vm (char*,int *) ;
 int print_dsi_vm (char*,int *) ;

__attribute__((used)) static bool dsi_vm_calc_dispc_cb(int lckd, int pckd, unsigned long lck,
  unsigned long pck, void *data)
{
 struct dsi_clk_calc_ctx *ctx = data;

 ctx->dispc_cinfo.lck_div = lckd;
 ctx->dispc_cinfo.pck_div = pckd;
 ctx->dispc_cinfo.lck = lck;
 ctx->dispc_cinfo.pck = pck;

 if (dsi_vm_calc_blanking(ctx) == 0)
  return 0;
 return 1;
}
