
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s5p_aes_reqctx {int mode; } ;
struct s5p_aes_dev {int busy; TYPE_2__* req; int ctx; int lock; int queue; } ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int ) ;} ;
struct TYPE_4__ {int tfm; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 int EINPROGRESS ;
 TYPE_2__* ablkcipher_request_cast (struct crypto_async_request*) ;
 struct s5p_aes_reqctx* ablkcipher_request_ctx (TYPE_2__*) ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 int crypto_tfm_ctx (int ) ;
 int s5p_aes_crypt_start (struct s5p_aes_dev*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct crypto_async_request*,int ) ;

__attribute__((used)) static void s5p_tasklet_cb(unsigned long data)
{
 struct s5p_aes_dev *dev = (struct s5p_aes_dev *)data;
 struct crypto_async_request *async_req, *backlog;
 struct s5p_aes_reqctx *reqctx;
 unsigned long flags;

 spin_lock_irqsave(&dev->lock, flags);
 backlog = crypto_get_backlog(&dev->queue);
 async_req = crypto_dequeue_request(&dev->queue);

 if (!async_req) {
  dev->busy = 0;
  spin_unlock_irqrestore(&dev->lock, flags);
  return;
 }
 spin_unlock_irqrestore(&dev->lock, flags);

 if (backlog)
  backlog->complete(backlog, -EINPROGRESS);

 dev->req = ablkcipher_request_cast(async_req);
 dev->ctx = crypto_tfm_ctx(dev->req->base.tfm);
 reqctx = ablkcipher_request_ctx(dev->req);

 s5p_aes_crypt_start(dev, reqctx->mode);
}
