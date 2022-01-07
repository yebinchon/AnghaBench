
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_reqctx {scalar_t__ bufcnt; scalar_t__ buflen; scalar_t__ buffer; int flags; struct omap_sham_dev* dd; } ;
struct omap_sham_dev {scalar_t__ polling_mode; } ;
struct ahash_request {scalar_t__ nbytes; int src; } ;


 int BIT (int ) ;
 int FLAGS_CPU ;
 int OP_UPDATE ;
 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int omap_sham_enqueue (struct ahash_request*,int ) ;
 int scatterwalk_map_and_copy (scalar_t__,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int omap_sham_update(struct ahash_request *req)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(req);
 struct omap_sham_dev *dd = ctx->dd;

 if (!req->nbytes)
  return 0;

 if (ctx->bufcnt + req->nbytes <= ctx->buflen) {
  scatterwalk_map_and_copy(ctx->buffer + ctx->bufcnt, req->src,
      0, req->nbytes, 0);
  ctx->bufcnt += req->nbytes;
  return 0;
 }

 if (dd->polling_mode)
  ctx->flags |= BIT(FLAGS_CPU);

 return omap_sham_enqueue(req, OP_UPDATE);
}
