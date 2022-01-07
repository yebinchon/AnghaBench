
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_reqctx {int dd; } ;
struct ahash_request {int dummy; } ;


 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int s5p_hash_write_ctx_iv (int ,struct s5p_hash_reqctx*) ;

__attribute__((used)) static void s5p_hash_write_iv(struct ahash_request *req)
{
 struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);

 s5p_hash_write_ctx_iv(ctx->dd, ctx);
}
