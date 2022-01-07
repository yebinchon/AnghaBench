
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_hash_reqctx {int op_update; } ;
struct s5p_hash_ctx {int dd; } ;
struct TYPE_2__ {int tfm; } ;
struct ahash_request {TYPE_1__ base; } ;


 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct s5p_hash_ctx* crypto_tfm_ctx (int ) ;
 int s5p_hash_handle_queue (int ,struct ahash_request*) ;

__attribute__((used)) static int s5p_hash_enqueue(struct ahash_request *req, bool op)
{
 struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);
 struct s5p_hash_ctx *tctx = crypto_tfm_ctx(req->base.tfm);

 ctx->op_update = op;

 return s5p_hash_handle_queue(tctx->dd, req);
}
