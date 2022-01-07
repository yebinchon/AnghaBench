
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimd_context {scalar_t__ regs; } ;


 scalar_t__ WINCON (unsigned int) ;
 int WINCONx_ENWIN ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void fimd_enable_video_output(struct fimd_context *ctx, unsigned int win,
     bool enable)
{
 u32 val = readl(ctx->regs + WINCON(win));

 if (enable)
  val |= WINCONx_ENWIN;
 else
  val &= ~WINCONx_ENWIN;

 writel(val, ctx->regs + WINCON(win));
}
