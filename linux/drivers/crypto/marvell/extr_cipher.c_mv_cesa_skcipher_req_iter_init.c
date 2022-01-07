
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dst; int src; int cryptlen; } ;
struct mv_cesa_skcipher_dma_iter {int dst; int src; int base; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int mv_cesa_req_dma_iter_init (int *,int ) ;
 int mv_cesa_sg_dma_iter_init (int *,int ,int ) ;

__attribute__((used)) static inline void
mv_cesa_skcipher_req_iter_init(struct mv_cesa_skcipher_dma_iter *iter,
          struct skcipher_request *req)
{
 mv_cesa_req_dma_iter_init(&iter->base, req->cryptlen);
 mv_cesa_sg_dma_iter_init(&iter->src, req->src, DMA_TO_DEVICE);
 mv_cesa_sg_dma_iter_init(&iter->dst, req->dst, DMA_FROM_DEVICE);
}
