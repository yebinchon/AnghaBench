
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_hash_reqctx {int bufcnt; int buffer; } ;
struct s5p_hash_ctx {int fallback; } ;
struct TYPE_2__ {int flags; int tfm; } ;
struct ahash_request {int result; TYPE_1__ base; } ;


 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct s5p_hash_ctx* crypto_tfm_ctx (int ) ;
 int s5p_hash_shash_digest (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int s5p_hash_final_shash(struct ahash_request *req)
{
 struct s5p_hash_ctx *tctx = crypto_tfm_ctx(req->base.tfm);
 struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);

 return s5p_hash_shash_digest(tctx->fallback, req->base.flags,
         ctx->buffer, ctx->bufcnt, req->result);
}
