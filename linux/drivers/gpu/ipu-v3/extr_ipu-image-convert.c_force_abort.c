
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_image_convert_run {int list; int status; struct ipu_image_convert_ctx* ctx; } ;
struct ipu_image_convert_ctx {struct ipu_image_convert_chan* chan; } ;
struct ipu_image_convert_chan {int irqlock; struct ipu_image_convert_run* current_run; int done_q; } ;


 int EIO ;
 int convert_stop (struct ipu_image_convert_run*) ;
 int empty_done_q (struct ipu_image_convert_chan*) ;
 int list_add_tail (int *,int *) ;
 int run_next (struct ipu_image_convert_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void force_abort(struct ipu_image_convert_ctx *ctx)
{
 struct ipu_image_convert_chan *chan = ctx->chan;
 struct ipu_image_convert_run *run;
 unsigned long flags;

 spin_lock_irqsave(&chan->irqlock, flags);

 run = chan->current_run;
 if (run && run->ctx == ctx) {
  convert_stop(run);
  run->status = -EIO;
  list_add_tail(&run->list, &chan->done_q);
  chan->current_run = ((void*)0);
  run_next(chan);
 }

 spin_unlock_irqrestore(&chan->irqlock, flags);

 empty_done_q(chan);
}
