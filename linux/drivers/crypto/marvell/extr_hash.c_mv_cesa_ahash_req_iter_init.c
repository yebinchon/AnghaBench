
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_cesa_ahash_req {unsigned int cache_ptr; int last_req; } ;
struct TYPE_2__ {unsigned int op_offset; } ;
struct mv_cesa_ahash_dma_iter {TYPE_1__ src; int base; } ;
struct ahash_request {unsigned int nbytes; int src; } ;


 unsigned int CESA_HASH_BLOCK_SIZE_MSK ;
 int DMA_TO_DEVICE ;
 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int mv_cesa_req_dma_iter_init (int *,unsigned int) ;
 int mv_cesa_sg_dma_iter_init (TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline void
mv_cesa_ahash_req_iter_init(struct mv_cesa_ahash_dma_iter *iter,
       struct ahash_request *req)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);
 unsigned int len = req->nbytes + creq->cache_ptr;

 if (!creq->last_req)
  len &= ~CESA_HASH_BLOCK_SIZE_MSK;

 mv_cesa_req_dma_iter_init(&iter->base, len);
 mv_cesa_sg_dma_iter_init(&iter->src, req->src, DMA_TO_DEVICE);
 iter->src.op_offset = creq->cache_ptr;
}
