
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_dev {int queue_mutex; int queue; } ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int) ;int tfm; } ;
struct ahash_request {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 scalar_t__ CRYPTO_ALG_TYPE_AHASH ;
 int EINPROGRESS ;
 int TASK_INTERRUPTIBLE ;
 int __set_current_state (int ) ;
 struct ablkcipher_request* ablkcipher_request_cast (struct crypto_async_request*) ;
 struct ahash_request* ahash_request_cast (struct crypto_async_request*) ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 scalar_t__ crypto_tfm_alg_type (int ) ;
 int kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sahara_aes_process (struct ablkcipher_request*) ;
 int sahara_sha_process (struct ahash_request*) ;
 int schedule () ;
 int stub1 (struct crypto_async_request*,int) ;
 int stub2 (struct crypto_async_request*,int) ;

__attribute__((used)) static int sahara_queue_manage(void *data)
{
 struct sahara_dev *dev = (struct sahara_dev *)data;
 struct crypto_async_request *async_req;
 struct crypto_async_request *backlog;
 int ret = 0;

 do {
  __set_current_state(TASK_INTERRUPTIBLE);

  mutex_lock(&dev->queue_mutex);
  backlog = crypto_get_backlog(&dev->queue);
  async_req = crypto_dequeue_request(&dev->queue);
  mutex_unlock(&dev->queue_mutex);

  if (backlog)
   backlog->complete(backlog, -EINPROGRESS);

  if (async_req) {
   if (crypto_tfm_alg_type(async_req->tfm) ==
       CRYPTO_ALG_TYPE_AHASH) {
    struct ahash_request *req =
     ahash_request_cast(async_req);

    ret = sahara_sha_process(req);
   } else {
    struct ablkcipher_request *req =
     ablkcipher_request_cast(async_req);

    ret = sahara_aes_process(req);
   }

   async_req->complete(async_req, ret);

   continue;
  }

  schedule();
 } while (!kthread_should_stop());

 return 0;
}
