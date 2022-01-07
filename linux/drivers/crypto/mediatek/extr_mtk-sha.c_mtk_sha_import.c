
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_reqctx {int dummy; } ;
struct ahash_request {int dummy; } ;


 struct mtk_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (struct mtk_sha_reqctx*,void const*,int) ;

__attribute__((used)) static int mtk_sha_import(struct ahash_request *req, const void *in)
{
 struct mtk_sha_reqctx *ctx = ahash_request_ctx(req);

 memcpy(ctx, in, sizeof(*ctx));
 return 0;
}
