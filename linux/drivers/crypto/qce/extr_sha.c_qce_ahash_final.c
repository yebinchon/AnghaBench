
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qce_sha_reqctx {int last_blk; scalar_t__ buflen; int sg; int tmpbuf; int buf; scalar_t__ nbytes_orig; int src_orig; } ;
struct qce_device {int (* async_req_enqueue ) (struct qce_device*,TYPE_1__*) ;} ;
struct qce_alg_template {struct qce_device* qce; } ;
struct TYPE_2__ {int tfm; } ;
struct ahash_request {TYPE_1__ base; scalar_t__ nbytes; int src; } ;


 struct qce_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int sg_init_one (int ,int ,scalar_t__) ;
 int stub1 (struct qce_device*,TYPE_1__*) ;
 struct qce_alg_template* to_ahash_tmpl (int ) ;

__attribute__((used)) static int qce_ahash_final(struct ahash_request *req)
{
 struct qce_sha_reqctx *rctx = ahash_request_ctx(req);
 struct qce_alg_template *tmpl = to_ahash_tmpl(req->base.tfm);
 struct qce_device *qce = tmpl->qce;

 if (!rctx->buflen)
  return 0;

 rctx->last_blk = 1;

 rctx->src_orig = req->src;
 rctx->nbytes_orig = req->nbytes;

 memcpy(rctx->tmpbuf, rctx->buf, rctx->buflen);
 sg_init_one(rctx->sg, rctx->tmpbuf, rctx->buflen);

 req->src = rctx->sg;
 req->nbytes = rctx->buflen;

 return qce->async_req_enqueue(tmpl->qce, &req->base);
}
