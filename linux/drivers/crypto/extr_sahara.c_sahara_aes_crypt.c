
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_dev {int kthread; int queue_mutex; int queue; int device; } ;
struct sahara_aes_reqctx {unsigned long mode; } ;
struct ablkcipher_request {int nbytes; } ;


 int AES_BLOCK_SIZE ;
 int EINVAL ;
 unsigned long FLAGS_CBC ;
 unsigned long FLAGS_ENCRYPT ;
 int IS_ALIGNED (int ,int ) ;
 int ablkcipher_enqueue_request (int *,struct ablkcipher_request*) ;
 struct sahara_aes_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int dev_dbg (int ,char*,int ,int,int) ;
 int dev_err (int ,char*) ;
 struct sahara_dev* dev_ptr ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int sahara_aes_crypt(struct ablkcipher_request *req, unsigned long mode)
{
 struct sahara_aes_reqctx *rctx = ablkcipher_request_ctx(req);
 struct sahara_dev *dev = dev_ptr;
 int err = 0;

 dev_dbg(dev->device, "nbytes: %d, enc: %d, cbc: %d\n",
  req->nbytes, !!(mode & FLAGS_ENCRYPT), !!(mode & FLAGS_CBC));

 if (!IS_ALIGNED(req->nbytes, AES_BLOCK_SIZE)) {
  dev_err(dev->device,
   "request size is not exact amount of AES blocks\n");
  return -EINVAL;
 }

 rctx->mode = mode;

 mutex_lock(&dev->queue_mutex);
 err = ablkcipher_enqueue_request(&dev->queue, req);
 mutex_unlock(&dev->queue_mutex);

 wake_up_process(dev->kthread);

 return err;
}
