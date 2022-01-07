
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_image_convert_run {struct ipu_image_convert_ctx* ctx; } ;
struct ipu_image_convert_priv {TYPE_1__* ipu; } ;
struct ipu_image_convert_ctx {int rot_mode; } ;
struct ipu_image_convert_chan {int irqlock; struct ipu_image_convert_run* current_run; struct ipu_image_convert_priv* priv; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_err (int ,char*) ;
 int do_irq (struct ipu_image_convert_run*) ;
 int ipu_rot_mode_is_irt (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t rotate_irq(int irq, void *data)
{
 struct ipu_image_convert_chan *chan = data;
 struct ipu_image_convert_priv *priv = chan->priv;
 struct ipu_image_convert_ctx *ctx;
 struct ipu_image_convert_run *run;
 unsigned long flags;
 irqreturn_t ret;

 spin_lock_irqsave(&chan->irqlock, flags);


 run = chan->current_run;
 if (!run) {
  ret = IRQ_NONE;
  goto out;
 }

 ctx = run->ctx;

 if (!ipu_rot_mode_is_irt(ctx->rot_mode)) {

  dev_err(priv->ipu->dev, "Unexpected rotation interrupt\n");
  spin_unlock_irqrestore(&chan->irqlock, flags);
  return IRQ_HANDLED;
 }

 ret = do_irq(run);
out:
 spin_unlock_irqrestore(&chan->irqlock, flags);
 return ret;
}
