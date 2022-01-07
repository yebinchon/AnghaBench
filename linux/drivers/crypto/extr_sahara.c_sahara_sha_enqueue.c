
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_sha_reqctx {int last; int active; int first; } ;
struct sahara_dev {int kthread; int queue_mutex; int queue; } ;
struct ahash_request {int base; int nbytes; } ;


 struct sahara_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int crypto_enqueue_request (int *,int *) ;
 struct sahara_dev* dev_ptr ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int sahara_sha_enqueue(struct ahash_request *req, int last)
{
 struct sahara_sha_reqctx *rctx = ahash_request_ctx(req);
 struct sahara_dev *dev = dev_ptr;
 int ret;

 if (!req->nbytes && !last)
  return 0;

 rctx->last = last;

 if (!rctx->active) {
  rctx->active = 1;
  rctx->first = 1;
 }

 mutex_lock(&dev->queue_mutex);
 ret = crypto_enqueue_request(&dev->queue, &req->base);
 mutex_unlock(&dev->queue_mutex);

 wake_up_process(dev->kthread);

 return ret;
}
