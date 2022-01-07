
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_reqctx {scalar_t__ iv_dma; scalar_t__ b0_dma; scalar_t__ b0_len; int iv; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; scalar_t__ src; scalar_t__ dst; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 scalar_t__ IV ;
 struct chcr_aead_reqctx* aead_request_ctx (struct aead_request*) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int dma_map_sg (struct device*,scalar_t__,int ,int ) ;
 scalar_t__ dma_map_single (struct device*,int ,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;
 int dma_unmap_sg (struct device*,scalar_t__,int ,int ) ;
 int dma_unmap_single (struct device*,scalar_t__,scalar_t__,int ) ;
 int sg_nents (scalar_t__) ;

int chcr_aead_dma_map(struct device *dev,
        struct aead_request *req,
        unsigned short op_type)
{
 int error;
 struct chcr_aead_reqctx *reqctx = aead_request_ctx(req);
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 unsigned int authsize = crypto_aead_authsize(tfm);
 int dst_size;

 dst_size = req->assoclen + req->cryptlen + (op_type ?
    -authsize : authsize);
 if (!req->cryptlen || !dst_size)
  return 0;
 reqctx->iv_dma = dma_map_single(dev, reqctx->iv, (IV + reqctx->b0_len),
     DMA_BIDIRECTIONAL);
 if (dma_mapping_error(dev, reqctx->iv_dma))
  return -ENOMEM;
 if (reqctx->b0_len)
  reqctx->b0_dma = reqctx->iv_dma + IV;
 else
  reqctx->b0_dma = 0;
 if (req->src == req->dst) {
  error = dma_map_sg(dev, req->src, sg_nents(req->src),
       DMA_BIDIRECTIONAL);
  if (!error)
   goto err;
 } else {
  error = dma_map_sg(dev, req->src, sg_nents(req->src),
       DMA_TO_DEVICE);
  if (!error)
   goto err;
  error = dma_map_sg(dev, req->dst, sg_nents(req->dst),
       DMA_FROM_DEVICE);
  if (!error) {
   dma_unmap_sg(dev, req->src, sg_nents(req->src),
       DMA_TO_DEVICE);
   goto err;
  }
 }

 return 0;
err:
 dma_unmap_single(dev, reqctx->iv_dma, IV, DMA_BIDIRECTIONAL);
 return -ENOMEM;
}
