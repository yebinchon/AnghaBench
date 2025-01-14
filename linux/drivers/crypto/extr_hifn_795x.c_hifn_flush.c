
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_dma {struct hifn_desc* resr; } ;
struct hifn_device {int lock; int queue; struct ablkcipher_request** sa; scalar_t__ desc_virt; } ;
struct hifn_desc {int l; } ;
struct crypto_async_request {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 int ENODEV ;
 int HIFN_D_RES_RSIZE ;
 int HIFN_D_VALID ;
 int __cpu_to_le32 (int ) ;
 struct ablkcipher_request* ablkcipher_request_cast (struct crypto_async_request*) ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 int hifn_complete_sa (struct hifn_device*,int) ;
 int hifn_process_ready (struct ablkcipher_request*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hifn_flush(struct hifn_device *dev)
{
 unsigned long flags;
 struct crypto_async_request *async_req;
 struct ablkcipher_request *req;
 struct hifn_dma *dma = (struct hifn_dma *)dev->desc_virt;
 int i;

 for (i = 0; i < HIFN_D_RES_RSIZE; ++i) {
  struct hifn_desc *d = &dma->resr[i];

  if (dev->sa[i]) {
   hifn_process_ready(dev->sa[i],
    (d->l & __cpu_to_le32(HIFN_D_VALID)) ? -ENODEV : 0);
   hifn_complete_sa(dev, i);
  }
 }

 spin_lock_irqsave(&dev->lock, flags);
 while ((async_req = crypto_dequeue_request(&dev->queue))) {
  req = ablkcipher_request_cast(async_req);
  spin_unlock_irqrestore(&dev->lock, flags);

  hifn_process_ready(req, -ENODEV);

  spin_lock_irqsave(&dev->lock, flags);
 }
 spin_unlock_irqrestore(&dev->lock, flags);
}
