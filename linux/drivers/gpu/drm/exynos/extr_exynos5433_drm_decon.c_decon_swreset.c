
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct decon_context {int out_type; scalar_t__ addr; int vblank_lock; scalar_t__ frame_id; } ;


 int CMU_CLKGAGE_MODE_MEM_F ;
 int CMU_CLKGAGE_MODE_SFR_F ;
 int CRCCTRL_CRCCLKEN ;
 int CRCCTRL_CRCEN ;
 int CRCCTRL_CRCSTART_F ;
 int DECON_CMU ;
 scalar_t__ DECON_CRCCTRL ;
 scalar_t__ DECON_VIDCON0 ;
 scalar_t__ DECON_VIDCON1 ;
 int IFTYPE_HDMI ;
 int VIDCON0_CLKVALUP ;
 int VIDCON0_STOP_STATUS ;
 int VIDCON0_SWRESET ;
 int VIDCON0_VLCKFREE ;
 int VIDCON1_VCLK_RUN_VDEN_DISABLE ;
 int WARN (int,char*) ;
 int decon_set_bits (struct decon_context*,int ,int,int ) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void decon_swreset(struct decon_context *ctx)
{
 unsigned long flags;
 u32 val;
 int ret;

 writel(0, ctx->addr + DECON_VIDCON0);
 readl_poll_timeout(ctx->addr + DECON_VIDCON0, val,
      ~val & VIDCON0_STOP_STATUS, 12, 20000);

 writel(VIDCON0_SWRESET, ctx->addr + DECON_VIDCON0);
 ret = readl_poll_timeout(ctx->addr + DECON_VIDCON0, val,
     ~val & VIDCON0_SWRESET, 12, 20000);

 WARN(ret < 0, "failed to software reset DECON\n");

 spin_lock_irqsave(&ctx->vblank_lock, flags);
 ctx->frame_id = 0;
 spin_unlock_irqrestore(&ctx->vblank_lock, flags);

 if (!(ctx->out_type & IFTYPE_HDMI))
  return;

 writel(VIDCON0_CLKVALUP | VIDCON0_VLCKFREE, ctx->addr + DECON_VIDCON0);
 decon_set_bits(ctx, DECON_CMU,
         CMU_CLKGAGE_MODE_SFR_F | CMU_CLKGAGE_MODE_MEM_F, ~0);
 writel(VIDCON1_VCLK_RUN_VDEN_DISABLE, ctx->addr + DECON_VIDCON1);
 writel(CRCCTRL_CRCEN | CRCCTRL_CRCSTART_F | CRCCTRL_CRCCLKEN,
        ctx->addr + DECON_CRCCTRL);
}
