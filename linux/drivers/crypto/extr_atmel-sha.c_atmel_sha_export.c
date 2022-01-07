
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {int dummy; } ;
struct ahash_request {int dummy; } ;


 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (void*,struct atmel_sha_reqctx const*,int) ;

__attribute__((used)) static int atmel_sha_export(struct ahash_request *req, void *out)
{
 const struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);

 memcpy(out, ctx, sizeof(*ctx));
 return 0;
}
