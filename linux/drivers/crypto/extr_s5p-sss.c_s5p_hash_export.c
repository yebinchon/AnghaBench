
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_reqctx {scalar_t__ bufcnt; } ;
struct ahash_request {int dummy; } ;


 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (void*,struct s5p_hash_reqctx const*,scalar_t__) ;

__attribute__((used)) static int s5p_hash_export(struct ahash_request *req, void *out)
{
 const struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);

 memcpy(out, ctx, sizeof(*ctx) + ctx->bufcnt);

 return 0;
}
