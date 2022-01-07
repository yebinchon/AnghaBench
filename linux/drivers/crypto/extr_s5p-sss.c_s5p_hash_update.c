
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_reqctx {scalar_t__ bufcnt; scalar_t__ buffer; } ;
struct ahash_request {scalar_t__ nbytes; int src; } ;


 scalar_t__ BUFLEN ;
 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int s5p_hash_enqueue (struct ahash_request*,int) ;
 int scatterwalk_map_and_copy (scalar_t__,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int s5p_hash_update(struct ahash_request *req)
{
 struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);

 if (!req->nbytes)
  return 0;

 if (ctx->bufcnt + req->nbytes <= BUFLEN) {
  scatterwalk_map_and_copy(ctx->buffer + ctx->bufcnt, req->src,
      0, req->nbytes, 0);
  ctx->bufcnt += req->nbytes;
  return 0;
 }

 return s5p_hash_enqueue(req, 1);
}
