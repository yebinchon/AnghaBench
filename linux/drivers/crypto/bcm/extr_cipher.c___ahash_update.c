
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_reqctx_s {scalar_t__ src_sent; int total_todo; } ;
struct ahash_request {scalar_t__ nbytes; } ;


 int ahash_enqueue (struct ahash_request*) ;
 struct iproc_reqctx_s* ahash_request_ctx (struct ahash_request*) ;
 int flow_log (char*,scalar_t__) ;

__attribute__((used)) static int __ahash_update(struct ahash_request *req)
{
 struct iproc_reqctx_s *rctx = ahash_request_ctx(req);

 flow_log("ahash_update() nbytes:%u\n", req->nbytes);

 if (!req->nbytes)
  return 0;
 rctx->total_todo += req->nbytes;
 rctx->src_sent = 0;

 return ahash_enqueue(req);
}
