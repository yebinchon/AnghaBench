
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct decon_context {scalar_t__ regs; int i80_if; } ;


 scalar_t__ VCLKCON0 ;
 int VCLKCON0_CLKVALUP ;
 int VCLKCON0_VCLKFREE ;
 scalar_t__ VIDCON0 ;
 int VIDCON0_SWRESET ;
 scalar_t__ VIDCON1 (int ) ;
 int VIDCON1_VCLK_HOLD ;
 scalar_t__ VIDOUTCON0 ;
 int VIDOUTCON0_DISP_IF_0_ON ;
 int VIDOUTCON0_RGBIF ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void decon_init(struct decon_context *ctx)
{
 u32 val;

 writel(VIDCON0_SWRESET, ctx->regs + VIDCON0);

 val = VIDOUTCON0_DISP_IF_0_ON;
 if (!ctx->i80_if)
  val |= VIDOUTCON0_RGBIF;
 writel(val, ctx->regs + VIDOUTCON0);

 writel(VCLKCON0_CLKVALUP | VCLKCON0_VCLKFREE, ctx->regs + VCLKCON0);

 if (!ctx->i80_if)
  writel(VIDCON1_VCLK_HOLD, ctx->regs + VIDCON1(0));
}
