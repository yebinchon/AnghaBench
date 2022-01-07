
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_reqctx {int flags; } ;
struct ahash_request {int dummy; } ;


 int BIT (int ) ;
 int EBUSY ;
 int EINPROGRESS ;
 int FLAGS_FINUP ;
 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int omap_sham_final (struct ahash_request*) ;
 int omap_sham_update (struct ahash_request*) ;

__attribute__((used)) static int omap_sham_finup(struct ahash_request *req)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(req);
 int err1, err2;

 ctx->flags |= BIT(FLAGS_FINUP);

 err1 = omap_sham_update(req);
 if (err1 == -EINPROGRESS || err1 == -EBUSY)
  return err1;




 err2 = omap_sham_final(req);

 return err1 ?: err2;
}
