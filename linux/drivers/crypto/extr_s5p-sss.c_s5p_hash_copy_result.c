
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_reqctx {int nregs; int digest; } ;
struct ahash_request {int result; } ;


 int HASH_REG_SIZEOF ;
 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void s5p_hash_copy_result(struct ahash_request *req)
{
 const struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);

 if (!req->result)
  return;

 memcpy(req->result, ctx->digest, ctx->nregs * HASH_REG_SIZEOF);
}
