
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_7__ {int src; int nbytes; TYPE_1__ base; } ;
struct n2_hash_req_ctx {TYPE_3__ fallback_req; } ;
struct n2_hash_ctx {int fallback_tfm; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct ahash_request {int src; int nbytes; TYPE_2__ base; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 struct n2_hash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int ahash_request_set_tfm (TYPE_3__*,int ) ;
 struct n2_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_ahash_update (TYPE_3__*) ;

__attribute__((used)) static int n2_hash_async_update(struct ahash_request *req)
{
 struct n2_hash_req_ctx *rctx = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct n2_hash_ctx *ctx = crypto_ahash_ctx(tfm);

 ahash_request_set_tfm(&rctx->fallback_req, ctx->fallback_tfm);
 rctx->fallback_req.base.flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP;
 rctx->fallback_req.nbytes = req->nbytes;
 rctx->fallback_req.src = req->src;

 return crypto_ahash_update(&rctx->fallback_req);
}
