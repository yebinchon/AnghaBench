
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_reqctx {int flags; int bufcnt; scalar_t__ digcnt; struct omap_sham_dev* dd; } ;
struct omap_sham_dev {int dev; int flags; } ;
struct ahash_request {int dummy; } ;


 int BIT (int ) ;
 int FLAGS_AUTO_XOR ;
 int FLAGS_HMAC ;
 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int dev_dbg (int ,char*,scalar_t__,int ) ;
 int omap_sham_copy_ready_hash (struct ahash_request*) ;
 int omap_sham_finish_hmac (struct ahash_request*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int omap_sham_finish(struct ahash_request *req)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(req);
 struct omap_sham_dev *dd = ctx->dd;
 int err = 0;

 if (ctx->digcnt) {
  omap_sham_copy_ready_hash(req);
  if ((ctx->flags & BIT(FLAGS_HMAC)) &&
    !test_bit(FLAGS_AUTO_XOR, &dd->flags))
   err = omap_sham_finish_hmac(req);
 }

 dev_dbg(dd->dev, "digcnt: %d, bufcnt: %d\n", ctx->digcnt, ctx->bufcnt);

 return err;
}
