
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_dev {int flags; int nb_in_sg; int in_sg; int device; int nb_out_sg; int out_sg; int dma_completion; struct sahara_ctx* ctx; int iv_base; int total; } ;
struct sahara_ctx {int dummy; } ;
struct sahara_aes_reqctx {int mode; } ;
struct ablkcipher_request {int info; int dst; int src; int nbytes; } ;


 int AES_KEYSIZE_128 ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ETIMEDOUT ;
 int FLAGS_CBC ;
 int FLAGS_MODE_MASK ;
 int SAHARA_TIMEOUT_MS ;
 struct sahara_aes_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 struct sahara_ctx* crypto_ablkcipher_ctx (int ) ;
 int crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 int dev_err (int ,char*) ;
 struct sahara_dev* dev_ptr ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int reinit_completion (int *) ;
 int sahara_hw_descriptor_create (struct sahara_dev*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int sahara_aes_process(struct ablkcipher_request *req)
{
 struct sahara_dev *dev = dev_ptr;
 struct sahara_ctx *ctx;
 struct sahara_aes_reqctx *rctx;
 int ret;
 unsigned long timeout;


 dev_dbg(dev->device,
  "dispatch request (nbytes=%d, src=%p, dst=%p)\n",
  req->nbytes, req->src, req->dst);


 dev->total = req->nbytes;
 dev->in_sg = req->src;
 dev->out_sg = req->dst;

 rctx = ablkcipher_request_ctx(req);
 ctx = crypto_ablkcipher_ctx(crypto_ablkcipher_reqtfm(req));
 rctx->mode &= FLAGS_MODE_MASK;
 dev->flags = (dev->flags & ~FLAGS_MODE_MASK) | rctx->mode;

 if ((dev->flags & FLAGS_CBC) && req->info)
  memcpy(dev->iv_base, req->info, AES_KEYSIZE_128);


 dev->ctx = ctx;

 reinit_completion(&dev->dma_completion);

 ret = sahara_hw_descriptor_create(dev);
 if (ret)
  return -EINVAL;

 timeout = wait_for_completion_timeout(&dev->dma_completion,
    msecs_to_jiffies(SAHARA_TIMEOUT_MS));
 if (!timeout) {
  dev_err(dev->device, "AES timeout\n");
  return -ETIMEDOUT;
 }

 dma_unmap_sg(dev->device, dev->out_sg, dev->nb_out_sg,
  DMA_FROM_DEVICE);
 dma_unmap_sg(dev->device, dev->in_sg, dev->nb_in_sg,
  DMA_TO_DEVICE);

 return 0;
}
