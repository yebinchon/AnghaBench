
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qce_sha_reqctx {int first_blk; int last_blk; int nbytes_orig; int src_orig; } ;
struct qce_device {int (* async_req_enqueue ) (struct qce_device*,TYPE_1__*) ;} ;
struct qce_alg_template {struct qce_device* qce; } ;
struct TYPE_2__ {int tfm; } ;
struct ahash_request {TYPE_1__ base; int nbytes; int src; } ;


 struct qce_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int qce_ahash_init (struct ahash_request*) ;
 int stub1 (struct qce_device*,TYPE_1__*) ;
 struct qce_alg_template* to_ahash_tmpl (int ) ;

__attribute__((used)) static int qce_ahash_digest(struct ahash_request *req)
{
 struct qce_sha_reqctx *rctx = ahash_request_ctx(req);
 struct qce_alg_template *tmpl = to_ahash_tmpl(req->base.tfm);
 struct qce_device *qce = tmpl->qce;
 int ret;

 ret = qce_ahash_init(req);
 if (ret)
  return ret;

 rctx->src_orig = req->src;
 rctx->nbytes_orig = req->nbytes;
 rctx->first_blk = 1;
 rctx->last_blk = 1;

 return qce->async_req_enqueue(tmpl->qce, &req->base);
}
