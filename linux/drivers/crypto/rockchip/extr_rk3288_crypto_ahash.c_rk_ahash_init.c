
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct rk_ahash_rctx {TYPE_3__ fallback_req; } ;
struct rk_ahash_ctx {int fallback_tfm; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct ahash_request {TYPE_2__ base; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 struct rk_ahash_rctx* ahash_request_ctx (struct ahash_request*) ;
 int ahash_request_set_tfm (TYPE_3__*,int ) ;
 struct rk_ahash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_init (TYPE_3__*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;

__attribute__((used)) static int rk_ahash_init(struct ahash_request *req)
{
 struct rk_ahash_rctx *rctx = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct rk_ahash_ctx *ctx = crypto_ahash_ctx(tfm);

 ahash_request_set_tfm(&rctx->fallback_req, ctx->fallback_tfm);
 rctx->fallback_req.base.flags = req->base.flags &
     CRYPTO_TFM_REQ_MAY_SLEEP;

 return crypto_ahash_init(&rctx->fallback_req);
}
