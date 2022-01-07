
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_reqctx {int finup; scalar_t__ bufcnt; int digcnt; scalar_t__ error; } ;
struct ahash_request {int dummy; } ;


 scalar_t__ BUFLEN ;
 int EINVAL ;
 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int s5p_hash_enqueue (struct ahash_request*,int) ;
 int s5p_hash_final_shash (struct ahash_request*) ;

__attribute__((used)) static int s5p_hash_final(struct ahash_request *req)
{
 struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);

 ctx->finup = 1;
 if (ctx->error)
  return -EINVAL;

 if (!ctx->digcnt && ctx->bufcnt < BUFLEN)
  return s5p_hash_final_shash(req);

 return s5p_hash_enqueue(req, 0);
}
