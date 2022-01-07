
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct mv_cesa_skcipher_req {int base; } ;
struct crypto_async_request {int dummy; } ;


 scalar_t__ CESA_DMA_REQ ;
 int mv_cesa_dma_step (int *) ;
 scalar_t__ mv_cesa_req_get_type (int *) ;
 int mv_cesa_skcipher_std_step (struct skcipher_request*) ;
 struct skcipher_request* skcipher_request_cast (struct crypto_async_request*) ;
 struct mv_cesa_skcipher_req* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static void mv_cesa_skcipher_step(struct crypto_async_request *req)
{
 struct skcipher_request *skreq = skcipher_request_cast(req);
 struct mv_cesa_skcipher_req *creq = skcipher_request_ctx(skreq);

 if (mv_cesa_req_get_type(&creq->base) == CESA_DMA_REQ)
  mv_cesa_dma_step(&creq->base);
 else
  mv_cesa_skcipher_std_step(skreq);
}
