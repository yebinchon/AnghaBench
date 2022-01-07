
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hifn_device {scalar_t__ started; int lock; int queue; } ;
struct hifn_context {struct hifn_device* dev; } ;
struct TYPE_2__ {int tfm; } ;
struct ablkcipher_request {int nbytes; TYPE_1__ base; } ;


 scalar_t__ DIV_ROUND_UP (int ,int ) ;
 int EAGAIN ;
 scalar_t__ HIFN_QUEUE_LENGTH ;
 int PAGE_SIZE ;
 int ablkcipher_enqueue_request (int *,struct ablkcipher_request*) ;
 struct hifn_context* crypto_tfm_ctx (int ) ;
 int hifn_setup_session (struct ablkcipher_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hifn_handle_req(struct ablkcipher_request *req)
{
 struct hifn_context *ctx = crypto_tfm_ctx(req->base.tfm);
 struct hifn_device *dev = ctx->dev;
 int err = -EAGAIN;

 if (dev->started + DIV_ROUND_UP(req->nbytes, PAGE_SIZE) <= HIFN_QUEUE_LENGTH)
  err = hifn_setup_session(req);

 if (err == -EAGAIN) {
  unsigned long flags;

  spin_lock_irqsave(&dev->lock, flags);
  err = ablkcipher_enqueue_request(&dev->queue, req);
  spin_unlock_irqrestore(&dev->lock, flags);
 }

 return err;
}
