
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct decon_context {scalar_t__ regs; } ;


 scalar_t__ SHADOWCON ;
 int SHADOWCON_WINx_PROTECT (unsigned int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void decon_shadow_protect_win(struct decon_context *ctx,
         unsigned int win, bool protect)
{
 u32 bits, val;

 bits = SHADOWCON_WINx_PROTECT(win);

 val = readl(ctx->regs + SHADOWCON);
 if (protect)
  val |= bits;
 else
  val &= ~bits;
 writel(val, ctx->regs + SHADOWCON);
}
