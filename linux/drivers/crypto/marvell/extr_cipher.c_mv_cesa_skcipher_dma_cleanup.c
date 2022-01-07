
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_request {scalar_t__ dst; scalar_t__ src; } ;
struct mv_cesa_skcipher_req {int base; int src_nents; int dst_nents; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 TYPE_1__* cesa_dev ;
 int dma_unmap_sg (int ,scalar_t__,int ,int ) ;
 int mv_cesa_dma_cleanup (int *) ;
 struct mv_cesa_skcipher_req* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static inline void
mv_cesa_skcipher_dma_cleanup(struct skcipher_request *req)
{
 struct mv_cesa_skcipher_req *creq = skcipher_request_ctx(req);

 if (req->dst != req->src) {
  dma_unmap_sg(cesa_dev->dev, req->dst, creq->dst_nents,
        DMA_FROM_DEVICE);
  dma_unmap_sg(cesa_dev->dev, req->src, creq->src_nents,
        DMA_TO_DEVICE);
 } else {
  dma_unmap_sg(cesa_dev->dev, req->src, creq->src_nents,
        DMA_BIDIRECTIONAL);
 }
 mv_cesa_dma_cleanup(&creq->base);
}
