
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_reqctx {scalar_t__ bufcnt; } ;
struct ahash_request {int dummy; } ;


 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (void*,struct omap_sham_reqctx*,scalar_t__) ;

__attribute__((used)) static int omap_sham_export(struct ahash_request *req, void *out)
{
 struct omap_sham_reqctx *rctx = ahash_request_ctx(req);

 memcpy(out, rctx, sizeof(*rctx) + rctx->bufcnt);

 return 0;
}
