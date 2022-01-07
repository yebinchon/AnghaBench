
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_edesc {scalar_t__ sec4_sg_bytes; int sec4_sg_dma; int src_nents; int dst_nents; } ;
struct device {int dummy; } ;
struct caam_rsa_req_ctx {int fixup_src; } ;
struct akcipher_request {int dst; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 struct caam_rsa_req_ctx* akcipher_request_ctx (struct akcipher_request*) ;
 int dma_unmap_sg (struct device*,int ,int ,int ) ;
 int dma_unmap_single (struct device*,int ,scalar_t__,int ) ;

__attribute__((used)) static void rsa_io_unmap(struct device *dev, struct rsa_edesc *edesc,
    struct akcipher_request *req)
{
 struct caam_rsa_req_ctx *req_ctx = akcipher_request_ctx(req);

 dma_unmap_sg(dev, req->dst, edesc->dst_nents, DMA_FROM_DEVICE);
 dma_unmap_sg(dev, req_ctx->fixup_src, edesc->src_nents, DMA_TO_DEVICE);

 if (edesc->sec4_sg_bytes)
  dma_unmap_single(dev, edesc->sec4_sg_dma, edesc->sec4_sg_bytes,
     DMA_TO_DEVICE);
}
