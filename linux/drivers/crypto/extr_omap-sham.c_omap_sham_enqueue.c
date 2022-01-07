
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_sham_reqctx {unsigned int op; } ;
struct omap_sham_dev {int dummy; } ;
struct omap_sham_ctx {struct omap_sham_dev* dd; } ;
struct TYPE_2__ {int tfm; } ;
struct ahash_request {TYPE_1__ base; } ;


 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct omap_sham_ctx* crypto_tfm_ctx (int ) ;
 int omap_sham_handle_queue (struct omap_sham_dev*,struct ahash_request*) ;

__attribute__((used)) static int omap_sham_enqueue(struct ahash_request *req, unsigned int op)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(req);
 struct omap_sham_ctx *tctx = crypto_tfm_ctx(req->base.tfm);
 struct omap_sham_dev *dd = tctx->dd;

 ctx->op = op;

 return omap_sham_handle_queue(dd, req);
}
