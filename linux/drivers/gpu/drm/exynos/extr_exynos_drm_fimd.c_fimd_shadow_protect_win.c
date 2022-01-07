
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fimd_context {scalar_t__ regs; TYPE_1__* driver_data; } ;
struct TYPE_2__ {scalar_t__ has_shadowcon; } ;


 scalar_t__ PRTCON ;
 scalar_t__ PRTCON_PROTECT ;
 scalar_t__ SHADOWCON ;
 scalar_t__ SHADOWCON_WINx_PROTECT (unsigned int) ;
 scalar_t__ readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void fimd_shadow_protect_win(struct fimd_context *ctx,
        unsigned int win, bool protect)
{
 u32 reg, bits, val;
 if (ctx->driver_data->has_shadowcon) {
  reg = SHADOWCON;
  bits = SHADOWCON_WINx_PROTECT(win);
 } else {
  reg = PRTCON;
  bits = PRTCON_PROTECT;
 }

 val = readl(ctx->regs + reg);
 if (protect)
  val |= bits;
 else
  val &= ~bits;
 writel(val, ctx->regs + reg);
}
