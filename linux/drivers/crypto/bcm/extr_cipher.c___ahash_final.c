
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_reqctx_s {int is_final; } ;
struct ahash_request {int nbytes; } ;


 int ahash_enqueue (struct ahash_request*) ;
 struct iproc_reqctx_s* ahash_request_ctx (struct ahash_request*) ;
 int flow_log (char*,int ) ;

__attribute__((used)) static int __ahash_final(struct ahash_request *req)
{
 struct iproc_reqctx_s *rctx = ahash_request_ctx(req);

 flow_log("ahash_final() nbytes:%u\n", req->nbytes);

 rctx->is_final = 1;

 return ahash_enqueue(req);
}
