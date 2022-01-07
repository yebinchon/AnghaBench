
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct mv_cesa_req {int engine; } ;
struct mv_cesa_skcipher_req {struct mv_cesa_req base; } ;


 int mv_cesa_dma_prepare (struct mv_cesa_req*,int ) ;
 struct mv_cesa_skcipher_req* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static inline void
mv_cesa_skcipher_dma_prepare(struct skcipher_request *req)
{
 struct mv_cesa_skcipher_req *creq = skcipher_request_ctx(req);
 struct mv_cesa_req *basereq = &creq->base;

 mv_cesa_dma_prepare(basereq, basereq->engine);
}
