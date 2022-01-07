
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qce_sha_reqctx {int first_blk; int last_blk; int digest; int flags; } ;
struct qce_alg_template {int alg_flags; int * std_iv; } ;
struct TYPE_2__ {int tfm; } ;
struct ahash_request {TYPE_1__ base; } ;


 struct qce_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int const*,int) ;
 int memset (struct qce_sha_reqctx*,int ,int) ;
 struct qce_alg_template* to_ahash_tmpl (int ) ;

__attribute__((used)) static int qce_ahash_init(struct ahash_request *req)
{
 struct qce_sha_reqctx *rctx = ahash_request_ctx(req);
 struct qce_alg_template *tmpl = to_ahash_tmpl(req->base.tfm);
 const u32 *std_iv = tmpl->std_iv;

 memset(rctx, 0, sizeof(*rctx));
 rctx->first_blk = 1;
 rctx->last_blk = 0;
 rctx->flags = tmpl->alg_flags;
 memcpy(rctx->digest, std_iv, sizeof(rctx->digest));

 return 0;
}
