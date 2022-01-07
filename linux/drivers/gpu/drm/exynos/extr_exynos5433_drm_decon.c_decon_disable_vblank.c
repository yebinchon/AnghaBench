
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int out_type; scalar_t__ addr; int irq; int te_irq; } ;


 scalar_t__ DECON_VIDINTCON0 ;
 int I80_HW_TRG ;
 int disable_irq_nosync (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void decon_disable_vblank(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;

 if (!(ctx->out_type & I80_HW_TRG))
  disable_irq_nosync(ctx->te_irq);
 disable_irq_nosync(ctx->irq);

 writel(0, ctx->addr + DECON_VIDINTCON0);
}
