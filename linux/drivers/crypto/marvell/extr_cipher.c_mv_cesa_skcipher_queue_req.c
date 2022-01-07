
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int base; int cryptlen; } ;
struct mv_cesa_skcipher_req {int base; } ;
struct mv_cesa_op_ctx {int dummy; } ;
struct mv_cesa_engine {int dummy; } ;


 int mv_cesa_queue_req (int *,int *) ;
 scalar_t__ mv_cesa_req_needs_cleanup (int *,int) ;
 struct mv_cesa_engine* mv_cesa_select_engine (int ) ;
 int mv_cesa_skcipher_cleanup (struct skcipher_request*) ;
 int mv_cesa_skcipher_prepare (int *,struct mv_cesa_engine*) ;
 int mv_cesa_skcipher_req_init (struct skcipher_request*,struct mv_cesa_op_ctx*) ;
 struct mv_cesa_skcipher_req* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static int mv_cesa_skcipher_queue_req(struct skcipher_request *req,
          struct mv_cesa_op_ctx *tmpl)
{
 int ret;
 struct mv_cesa_skcipher_req *creq = skcipher_request_ctx(req);
 struct mv_cesa_engine *engine;

 ret = mv_cesa_skcipher_req_init(req, tmpl);
 if (ret)
  return ret;

 engine = mv_cesa_select_engine(req->cryptlen);
 mv_cesa_skcipher_prepare(&req->base, engine);

 ret = mv_cesa_queue_req(&req->base, &creq->base);

 if (mv_cesa_req_needs_cleanup(&req->base, ret))
  mv_cesa_skcipher_cleanup(req);

 return ret;
}
