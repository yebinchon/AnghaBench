
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_req {int engine; } ;
struct mv_cesa_ahash_req {struct mv_cesa_req base; } ;
struct ahash_request {int dummy; } ;


 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int mv_cesa_dma_prepare (struct mv_cesa_req*,int ) ;

__attribute__((used)) static inline void mv_cesa_ahash_dma_prepare(struct ahash_request *req)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);
 struct mv_cesa_req *basereq = &creq->base;

 mv_cesa_dma_prepare(basereq, basereq->engine);
}
