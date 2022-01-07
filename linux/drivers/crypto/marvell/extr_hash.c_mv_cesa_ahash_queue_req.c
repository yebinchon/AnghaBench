
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_engine {int dummy; } ;
struct mv_cesa_ahash_req {int base; } ;
struct ahash_request {int base; int nbytes; } ;


 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int mv_cesa_ahash_cleanup (struct ahash_request*) ;
 int mv_cesa_ahash_prepare (int *,struct mv_cesa_engine*) ;
 int mv_cesa_ahash_req_init (struct ahash_request*,int*) ;
 int mv_cesa_queue_req (int *,int *) ;
 scalar_t__ mv_cesa_req_needs_cleanup (int *,int) ;
 struct mv_cesa_engine* mv_cesa_select_engine (int ) ;

__attribute__((used)) static int mv_cesa_ahash_queue_req(struct ahash_request *req)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);
 struct mv_cesa_engine *engine;
 bool cached = 0;
 int ret;

 ret = mv_cesa_ahash_req_init(req, &cached);
 if (ret)
  return ret;

 if (cached)
  return 0;

 engine = mv_cesa_select_engine(req->nbytes);
 mv_cesa_ahash_prepare(&req->base, engine);

 ret = mv_cesa_queue_req(&req->base, &creq->base);

 if (mv_cesa_req_needs_cleanup(&req->base, ret))
  mv_cesa_ahash_cleanup(req);

 return ret;
}
