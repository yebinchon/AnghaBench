
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_reqctx {scalar_t__ total; scalar_t__ bufcnt; } ;
struct omap_sham_dev {int dev; scalar_t__ polling_mode; struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;


 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int dev_dbg (int ,char*,int) ;
 scalar_t__ get_block_size (struct omap_sham_reqctx*) ;
 int omap_sham_xmit_cpu (struct omap_sham_dev*,scalar_t__,int) ;
 int omap_sham_xmit_dma (struct omap_sham_dev*,scalar_t__,int) ;

__attribute__((used)) static int omap_sham_final_req(struct omap_sham_dev *dd)
{
 struct ahash_request *req = dd->req;
 struct omap_sham_reqctx *ctx = ahash_request_ctx(req);
 int err = 0, use_dma = 1;

 if ((ctx->total <= get_block_size(ctx)) || dd->polling_mode)




  use_dma = 0;

 if (use_dma)
  err = omap_sham_xmit_dma(dd, ctx->total, 1);
 else
  err = omap_sham_xmit_cpu(dd, ctx->total, 1);

 ctx->bufcnt = 0;

 dev_dbg(dd->dev, "final_req: err: %d\n", err);

 return err;
}
