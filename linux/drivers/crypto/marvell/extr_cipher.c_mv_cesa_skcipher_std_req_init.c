
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_request {int dummy; } ;
struct mv_cesa_op_ctx {int dummy; } ;
struct mv_cesa_skcipher_std_req {int skip_ctx; struct mv_cesa_op_ctx op; } ;
struct TYPE_2__ {int * last; int * first; } ;
struct mv_cesa_req {TYPE_1__ chain; } ;
struct mv_cesa_skcipher_req {struct mv_cesa_req base; struct mv_cesa_skcipher_std_req std; } ;


 struct mv_cesa_skcipher_req* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static inline int
mv_cesa_skcipher_std_req_init(struct skcipher_request *req,
         const struct mv_cesa_op_ctx *op_templ)
{
 struct mv_cesa_skcipher_req *creq = skcipher_request_ctx(req);
 struct mv_cesa_skcipher_std_req *sreq = &creq->std;
 struct mv_cesa_req *basereq = &creq->base;

 sreq->op = *op_templ;
 sreq->skip_ctx = 0;
 basereq->chain.first = ((void*)0);
 basereq->chain.last = ((void*)0);

 return 0;
}
