
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_reqctx {scalar_t__ bufcnt; } ;
struct ahash_request {int dummy; } ;


 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (struct omap_sham_reqctx*,void const*,scalar_t__) ;

__attribute__((used)) static int omap_sham_import(struct ahash_request *req, const void *in)
{
 struct omap_sham_reqctx *rctx = ahash_request_ctx(req);
 const struct omap_sham_reqctx *ctx_in = in;

 memcpy(rctx, in, sizeof(*rctx) + ctx_in->bufcnt);

 return 0;
}
