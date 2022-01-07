
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_display_mode {unsigned long htotal; unsigned long vtotal; unsigned long vrefresh; } ;
struct decon_context {int vclk; } ;


 int DIV_ROUND_UP (int ,unsigned long) ;
 int clk_get_rate (int ) ;

__attribute__((used)) static u32 decon_calc_clkdiv(struct decon_context *ctx,
  const struct drm_display_mode *mode)
{
 unsigned long ideal_clk = mode->htotal * mode->vtotal * mode->vrefresh;
 u32 clkdiv;


 clkdiv = DIV_ROUND_UP(clk_get_rate(ctx->vclk), ideal_clk);

 return (clkdiv < 0x100) ? clkdiv : 0xff;
}
