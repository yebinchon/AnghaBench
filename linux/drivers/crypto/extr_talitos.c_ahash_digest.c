
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ahash_req_ctx {int last; } ;
struct crypto_ahash {int (* init ) (struct ahash_request*) ;} ;
struct ahash_request {int nbytes; } ;


 int ahash_process_req (struct ahash_request*,int ) ;
 struct talitos_ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int stub1 (struct ahash_request*) ;

__attribute__((used)) static int ahash_digest(struct ahash_request *areq)
{
 struct talitos_ahash_req_ctx *req_ctx = ahash_request_ctx(areq);
 struct crypto_ahash *ahash = crypto_ahash_reqtfm(areq);

 ahash->init(areq);
 req_ctx->last = 1;

 return ahash_process_req(areq, areq->nbytes);
}
