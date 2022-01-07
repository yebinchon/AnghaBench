
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_reqctx {scalar_t__ b0_len; int iv_dma; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; scalar_t__ src; scalar_t__ dst; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ IV ;
 struct chcr_aead_reqctx* aead_request_ctx (struct aead_request*) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int dma_unmap_sg (struct device*,scalar_t__,int ,int ) ;
 int dma_unmap_single (struct device*,int ,scalar_t__,int ) ;
 int sg_nents (scalar_t__) ;

void chcr_aead_dma_unmap(struct device *dev,
    struct aead_request *req,
    unsigned short op_type)
{
 struct chcr_aead_reqctx *reqctx = aead_request_ctx(req);
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 unsigned int authsize = crypto_aead_authsize(tfm);
 int dst_size;

 dst_size = req->assoclen + req->cryptlen + (op_type ?
     -authsize : authsize);
 if (!req->cryptlen || !dst_size)
  return;

 dma_unmap_single(dev, reqctx->iv_dma, (IV + reqctx->b0_len),
     DMA_BIDIRECTIONAL);
 if (req->src == req->dst) {
  dma_unmap_sg(dev, req->src, sg_nents(req->src),
       DMA_BIDIRECTIONAL);
 } else {
  dma_unmap_sg(dev, req->src, sg_nents(req->src),
       DMA_TO_DEVICE);
  dma_unmap_sg(dev, req->dst, sg_nents(req->dst),
       DMA_FROM_DEVICE);
 }
}
