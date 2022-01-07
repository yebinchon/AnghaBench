
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimd_context {scalar_t__ regs; scalar_t__ i80_if; int irq_flags; scalar_t__ suspended; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;


 int EPERM ;
 scalar_t__ VIDINTCON0 ;
 int VIDINTCON0_FRAMESEL0_FRONTPORCH ;
 int VIDINTCON0_FRAMESEL0_MASK ;
 int VIDINTCON0_FRAMESEL1_MASK ;
 int VIDINTCON0_FRAMESEL1_NONE ;
 int VIDINTCON0_INT_ENABLE ;
 int VIDINTCON0_INT_FRAME ;
 int VIDINTCON0_INT_I80IFDONE ;
 int VIDINTCON0_INT_SYSMAINCON ;
 int VIDINTCON0_INT_SYSSUBCON ;
 int readl (scalar_t__) ;
 int test_and_set_bit (int ,int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int fimd_enable_vblank(struct exynos_drm_crtc *crtc)
{
 struct fimd_context *ctx = crtc->ctx;
 u32 val;

 if (ctx->suspended)
  return -EPERM;

 if (!test_and_set_bit(0, &ctx->irq_flags)) {
  val = readl(ctx->regs + VIDINTCON0);

  val |= VIDINTCON0_INT_ENABLE;

  if (ctx->i80_if) {
   val |= VIDINTCON0_INT_I80IFDONE;
   val |= VIDINTCON0_INT_SYSMAINCON;
   val &= ~VIDINTCON0_INT_SYSSUBCON;
  } else {
   val |= VIDINTCON0_INT_FRAME;

   val &= ~VIDINTCON0_FRAMESEL0_MASK;
   val |= VIDINTCON0_FRAMESEL0_FRONTPORCH;
   val &= ~VIDINTCON0_FRAMESEL1_MASK;
   val |= VIDINTCON0_FRAMESEL1_NONE;
  }

  writel(val, ctx->regs + VIDINTCON0);
 }

 return 0;
}
