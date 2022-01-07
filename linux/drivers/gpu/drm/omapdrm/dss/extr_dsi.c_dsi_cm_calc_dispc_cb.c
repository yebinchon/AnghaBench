
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videomode {unsigned long pixelclock; int hsync_len; int hfront_porch; int hback_porch; int vsync_len; scalar_t__ vback_porch; scalar_t__ vfront_porch; int vactive; int hactive; } ;
struct TYPE_3__ {int lck_div; int pck_div; unsigned long lck; unsigned long pck; } ;
struct dsi_clk_calc_ctx {TYPE_2__* config; TYPE_1__ dispc_cinfo; struct videomode vm; } ;
struct TYPE_4__ {struct videomode* vm; } ;



__attribute__((used)) static bool dsi_cm_calc_dispc_cb(int lckd, int pckd, unsigned long lck,
  unsigned long pck, void *data)
{
 struct dsi_clk_calc_ctx *ctx = data;
 struct videomode *vm = &ctx->vm;

 ctx->dispc_cinfo.lck_div = lckd;
 ctx->dispc_cinfo.pck_div = pckd;
 ctx->dispc_cinfo.lck = lck;
 ctx->dispc_cinfo.pck = pck;

 *vm = *ctx->config->vm;
 vm->pixelclock = pck;
 vm->hactive = ctx->config->vm->hactive;
 vm->vactive = ctx->config->vm->vactive;
 vm->hsync_len = vm->hfront_porch = vm->hback_porch = vm->vsync_len = 1;
 vm->vfront_porch = vm->vback_porch = 0;

 return 1;
}
