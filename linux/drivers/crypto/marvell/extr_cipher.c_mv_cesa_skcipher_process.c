
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skcipher_request {int dummy; } ;
struct mv_cesa_req {int dummy; } ;
struct mv_cesa_skcipher_req {struct mv_cesa_req base; } ;
struct crypto_async_request {int dummy; } ;


 scalar_t__ CESA_STD_REQ ;
 int mv_cesa_dma_process (struct mv_cesa_req*,int ) ;
 scalar_t__ mv_cesa_req_get_type (struct mv_cesa_req*) ;
 int mv_cesa_skcipher_std_process (struct skcipher_request*,int ) ;
 struct skcipher_request* skcipher_request_cast (struct crypto_async_request*) ;
 struct mv_cesa_skcipher_req* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static int mv_cesa_skcipher_process(struct crypto_async_request *req,
        u32 status)
{
 struct skcipher_request *skreq = skcipher_request_cast(req);
 struct mv_cesa_skcipher_req *creq = skcipher_request_ctx(skreq);
 struct mv_cesa_req *basereq = &creq->base;

 if (mv_cesa_req_get_type(basereq) == CESA_STD_REQ)
  return mv_cesa_skcipher_std_process(skreq, status);

 return mv_cesa_dma_process(basereq, status);
}
