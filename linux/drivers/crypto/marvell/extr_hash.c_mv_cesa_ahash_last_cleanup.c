
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_ahash_req {int base; } ;
struct ahash_request {int dummy; } ;


 scalar_t__ CESA_DMA_REQ ;
 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int mv_cesa_ahash_dma_last_cleanup (struct ahash_request*) ;
 scalar_t__ mv_cesa_req_get_type (int *) ;

__attribute__((used)) static void mv_cesa_ahash_last_cleanup(struct ahash_request *req)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);

 if (mv_cesa_req_get_type(&creq->base) == CESA_DMA_REQ)
  mv_cesa_ahash_dma_last_cleanup(req);
}
