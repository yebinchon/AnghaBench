
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_drm_crtc {scalar_t__ i80_mode; struct decon_context* ctx; } ;
struct decon_context {int out_type; int te_irq; int irq; scalar_t__ addr; } ;


 scalar_t__ DECON_VIDINTCON0 ;
 int I80_HW_TRG ;
 int VIDINTCON0_FRAMEDONE ;
 int VIDINTCON0_FRAMESEL_FP ;
 int VIDINTCON0_INTEN ;
 int VIDINTCON0_INTFRMEN ;
 int enable_irq (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int decon_enable_vblank(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;
 u32 val;

 val = VIDINTCON0_INTEN;
 if (crtc->i80_mode)
  val |= VIDINTCON0_FRAMEDONE;
 else
  val |= VIDINTCON0_INTFRMEN | VIDINTCON0_FRAMESEL_FP;

 writel(val, ctx->addr + DECON_VIDINTCON0);

 enable_irq(ctx->irq);
 if (!(ctx->out_type & I80_HW_TRG))
  enable_irq(ctx->te_irq);

 return 0;
}
