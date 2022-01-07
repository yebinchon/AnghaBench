
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_aes_reqctx {int mode; struct omap_aes_dev* dd; } ;
struct omap_aes_dev {int flags; struct aead_request* aead_req; struct omap_aes_ctx* ctx; int lock; int aead_queue; } ;
struct omap_aes_ctx {int dummy; } ;
struct TYPE_2__ {int (* complete ) (TYPE_1__*,int ) ;} ;
struct aead_request {TYPE_1__ base; } ;


 int EINPROGRESS ;
 int FLAGS_BUSY ;
 int FLAGS_MODE_MASK ;
 struct aead_request* aead_dequeue_request (int *) ;
 int aead_enqueue_request (int *,struct aead_request*) ;
 struct aead_request* aead_get_backlog (int *) ;
 struct omap_aes_reqctx* aead_request_ctx (struct aead_request*) ;
 struct omap_aes_ctx* crypto_aead_ctx (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;
 int omap_aes_crypt_dma_start (struct omap_aes_dev*) ;
 int omap_aes_gcm_copy_buffers (struct omap_aes_dev*,struct aead_request*) ;
 int omap_aes_gcm_finish_req (struct omap_aes_dev*,int) ;
 int omap_aes_write_ctrl (struct omap_aes_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int omap_aes_gcm_handle_queue(struct omap_aes_dev *dd,
         struct aead_request *req)
{
 struct omap_aes_ctx *ctx;
 struct aead_request *backlog;
 struct omap_aes_reqctx *rctx;
 unsigned long flags;
 int err, ret = 0;

 spin_lock_irqsave(&dd->lock, flags);
 if (req)
  ret = aead_enqueue_request(&dd->aead_queue, req);
 if (dd->flags & FLAGS_BUSY) {
  spin_unlock_irqrestore(&dd->lock, flags);
  return ret;
 }

 backlog = aead_get_backlog(&dd->aead_queue);
 req = aead_dequeue_request(&dd->aead_queue);
 if (req)
  dd->flags |= FLAGS_BUSY;
 spin_unlock_irqrestore(&dd->lock, flags);

 if (!req)
  return ret;

 if (backlog)
  backlog->base.complete(&backlog->base, -EINPROGRESS);

 ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
 rctx = aead_request_ctx(req);

 dd->ctx = ctx;
 rctx->dd = dd;
 dd->aead_req = req;

 rctx->mode &= FLAGS_MODE_MASK;
 dd->flags = (dd->flags & ~FLAGS_MODE_MASK) | rctx->mode;

 err = omap_aes_gcm_copy_buffers(dd, req);
 if (err)
  return err;

 err = omap_aes_write_ctrl(dd);
 if (!err)
  err = omap_aes_crypt_dma_start(dd);

 if (err) {
  omap_aes_gcm_finish_req(dd, err);
  omap_aes_gcm_handle_queue(dd, ((void*)0));
 }

 return ret;
}
