
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_device {scalar_t__ started; int lock; int queue; } ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int ) ;} ;
struct ablkcipher_request {int dummy; } ;


 int EINPROGRESS ;
 scalar_t__ HIFN_QUEUE_LENGTH ;
 struct ablkcipher_request* ablkcipher_request_cast (struct crypto_async_request*) ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 int hifn_handle_req (struct ablkcipher_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct crypto_async_request*,int ) ;

__attribute__((used)) static int hifn_process_queue(struct hifn_device *dev)
{
 struct crypto_async_request *async_req, *backlog;
 struct ablkcipher_request *req;
 unsigned long flags;
 int err = 0;

 while (dev->started < HIFN_QUEUE_LENGTH) {
  spin_lock_irqsave(&dev->lock, flags);
  backlog = crypto_get_backlog(&dev->queue);
  async_req = crypto_dequeue_request(&dev->queue);
  spin_unlock_irqrestore(&dev->lock, flags);

  if (!async_req)
   break;

  if (backlog)
   backlog->complete(backlog, -EINPROGRESS);

  req = ablkcipher_request_cast(async_req);

  err = hifn_handle_req(req);
  if (err)
   break;
 }

 return err;
}
