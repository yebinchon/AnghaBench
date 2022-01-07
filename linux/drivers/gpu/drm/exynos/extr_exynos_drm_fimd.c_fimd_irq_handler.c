
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fimd_context {int wait_vsync_queue; int wait_vsync_event; int triggering; scalar_t__ i80_if; TYPE_1__* crtc; int drm_dev; scalar_t__ regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int base; } ;


 int IRQ_HANDLED ;
 scalar_t__ VIDINTCON1 ;
 int VIDINTCON1_INT_FRAME ;
 int VIDINTCON1_INT_I80 ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int drm_crtc_handle_vblank (int *) ;
 int readl (scalar_t__) ;
 int wake_up (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t fimd_irq_handler(int irq, void *dev_id)
{
 struct fimd_context *ctx = (struct fimd_context *)dev_id;
 u32 val, clear_bit;

 val = readl(ctx->regs + VIDINTCON1);

 clear_bit = ctx->i80_if ? VIDINTCON1_INT_I80 : VIDINTCON1_INT_FRAME;
 if (val & clear_bit)
  writel(clear_bit, ctx->regs + VIDINTCON1);


 if (!ctx->drm_dev)
  goto out;

 if (!ctx->i80_if)
  drm_crtc_handle_vblank(&ctx->crtc->base);

 if (ctx->i80_if) {

  atomic_set(&ctx->triggering, 0);
 } else {

  if (atomic_read(&ctx->wait_vsync_event)) {
   atomic_set(&ctx->wait_vsync_event, 0);
   wake_up(&ctx->wait_vsync_queue);
  }
 }

out:
 return IRQ_HANDLED;
}
