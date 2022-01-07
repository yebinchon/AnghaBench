
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_sham_reqctx {int flags; scalar_t__ bufcnt; TYPE_1__* dd; int digcnt; } ;
struct ahash_request {int dummy; } ;
struct TYPE_2__ {scalar_t__ fallback_sz; } ;


 int BIT (int ) ;
 int FLAGS_ERROR ;
 int FLAGS_FINUP ;
 int OP_FINAL ;
 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int omap_sham_enqueue (struct ahash_request*,int ) ;
 int omap_sham_final_shash (struct ahash_request*) ;
 int omap_sham_finish (struct ahash_request*) ;

__attribute__((used)) static int omap_sham_final(struct ahash_request *req)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(req);

 ctx->flags |= BIT(FLAGS_FINUP);

 if (ctx->flags & BIT(FLAGS_ERROR))
  return 0;
 if (!ctx->digcnt && ctx->bufcnt < ctx->dd->fallback_sz)
  return omap_sham_final_shash(req);
 else if (ctx->bufcnt)
  return omap_sham_enqueue(req, OP_FINAL);


 return omap_sham_finish(req);
}
