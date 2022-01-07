
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ahash_req_ctx {scalar_t__ last; } ;
struct ahash_request {int nbytes; } ;


 int ahash_process_req (struct ahash_request*,int ) ;
 struct talitos_ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;

__attribute__((used)) static int ahash_update(struct ahash_request *areq)
{
 struct talitos_ahash_req_ctx *req_ctx = ahash_request_ctx(areq);

 req_ctx->last = 0;

 return ahash_process_req(areq, areq->nbytes);
}
