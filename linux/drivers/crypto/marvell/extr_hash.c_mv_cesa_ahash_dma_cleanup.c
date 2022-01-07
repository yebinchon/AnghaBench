
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dma; } ;
struct mv_cesa_ahash_req {int base; TYPE_1__ req; int src_nents; } ;
struct ahash_request {int src; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_TO_DEVICE ;
 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 TYPE_2__* cesa_dev ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mv_cesa_ahash_dma_free_cache (int *) ;
 int mv_cesa_dma_cleanup (int *) ;

__attribute__((used)) static inline void mv_cesa_ahash_dma_cleanup(struct ahash_request *req)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);

 dma_unmap_sg(cesa_dev->dev, req->src, creq->src_nents, DMA_TO_DEVICE);
 mv_cesa_ahash_dma_free_cache(&creq->req.dma);
 mv_cesa_dma_cleanup(&creq->base);
}
