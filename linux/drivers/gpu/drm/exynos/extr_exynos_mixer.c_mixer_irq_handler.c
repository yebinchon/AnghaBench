
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mixer_context {int reg_slock; TYPE_1__* crtc; int flags; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int base; } ;


 int IRQ_HANDLED ;
 int MXR_BIT_INTERLACE ;
 int MXR_INT_CLEAR_VSYNC ;
 int MXR_INT_STATUS ;
 int MXR_INT_STATUS_VSYNC ;
 int drm_crtc_handle_vblank (int *) ;
 int mixer_is_synced (struct mixer_context*) ;
 int mixer_reg_read (struct mixer_context*,int ) ;
 int mixer_reg_write (struct mixer_context*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t mixer_irq_handler(int irq, void *arg)
{
 struct mixer_context *ctx = arg;
 u32 val;

 spin_lock(&ctx->reg_slock);


 val = mixer_reg_read(ctx, MXR_INT_STATUS);


 if (val & MXR_INT_STATUS_VSYNC) {

  val |= MXR_INT_CLEAR_VSYNC;
  val &= ~MXR_INT_STATUS_VSYNC;


  if (test_bit(MXR_BIT_INTERLACE, &ctx->flags)
      && !mixer_is_synced(ctx))
   goto out;

  drm_crtc_handle_vblank(&ctx->crtc->base);
 }

out:

 mixer_reg_write(ctx, MXR_INT_STATUS, val);

 spin_unlock(&ctx->reg_slock);

 return IRQ_HANDLED;
}
