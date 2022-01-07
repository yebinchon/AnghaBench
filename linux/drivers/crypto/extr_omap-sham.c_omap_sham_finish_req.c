
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct omap_sham_reqctx {int flags; TYPE_3__* sg; scalar_t__ bufcnt; struct omap_sham_dev* dd; } ;
struct omap_sham_dev {int flags; int dev; TYPE_1__* pdata; } ;
struct TYPE_6__ {int (* complete ) (TYPE_2__*,int) ;} ;
struct ahash_request {TYPE_2__ base; } ;
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_5__ {int (* copy_hash ) (struct ahash_request*,int) ;} ;


 int BIT (int ) ;
 int FLAGS_BUSY ;
 int FLAGS_CPU ;
 int FLAGS_DMA_READY ;
 int FLAGS_ERROR ;
 int FLAGS_FINAL ;
 int FLAGS_OUTPUT_READY ;
 int FLAGS_SGS_ALLOCED ;
 int FLAGS_SGS_COPIED ;
 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int free_pages (unsigned long,int ) ;
 int get_order (scalar_t__) ;
 int kfree (TYPE_3__*) ;
 int omap_sham_finish (struct ahash_request*) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 scalar_t__ sg_virt (TYPE_3__*) ;
 int stub1 (struct ahash_request*,int) ;
 int stub2 (TYPE_2__*,int) ;
 scalar_t__ test_bit (int ,int*) ;

__attribute__((used)) static void omap_sham_finish_req(struct ahash_request *req, int err)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(req);
 struct omap_sham_dev *dd = ctx->dd;

 if (test_bit(FLAGS_SGS_COPIED, &dd->flags))
  free_pages((unsigned long)sg_virt(ctx->sg),
      get_order(ctx->sg->length + ctx->bufcnt));

 if (test_bit(FLAGS_SGS_ALLOCED, &dd->flags))
  kfree(ctx->sg);

 ctx->sg = ((void*)0);

 dd->flags &= ~(BIT(FLAGS_SGS_ALLOCED) | BIT(FLAGS_SGS_COPIED));

 if (!err) {
  dd->pdata->copy_hash(req, 1);
  if (test_bit(FLAGS_FINAL, &dd->flags))
   err = omap_sham_finish(req);
 } else {
  ctx->flags |= BIT(FLAGS_ERROR);
 }


 dd->flags &= ~(BIT(FLAGS_BUSY) | BIT(FLAGS_FINAL) | BIT(FLAGS_CPU) |
   BIT(FLAGS_DMA_READY) | BIT(FLAGS_OUTPUT_READY));

 pm_runtime_mark_last_busy(dd->dev);
 pm_runtime_put_autosuspend(dd->dev);

 if (req->base.complete)
  req->base.complete(&req->base, err);
}
