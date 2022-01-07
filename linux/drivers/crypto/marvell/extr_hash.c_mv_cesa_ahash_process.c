
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_cesa_ahash_req {int base; } ;
struct crypto_async_request {int dummy; } ;
struct ahash_request {int dummy; } ;


 scalar_t__ CESA_DMA_REQ ;
 struct ahash_request* ahash_request_cast (struct crypto_async_request*) ;
 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int mv_cesa_ahash_std_process (struct ahash_request*,int ) ;
 int mv_cesa_dma_process (int *,int ) ;
 scalar_t__ mv_cesa_req_get_type (int *) ;

__attribute__((used)) static int mv_cesa_ahash_process(struct crypto_async_request *req, u32 status)
{
 struct ahash_request *ahashreq = ahash_request_cast(req);
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(ahashreq);

 if (mv_cesa_req_get_type(&creq->base) == CESA_DMA_REQ)
  return mv_cesa_dma_process(&creq->base, status);

 return mv_cesa_ahash_std_process(ahashreq, status);
}
