
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_sha_reqctx {int dummy; } ;
struct ahash_request {int dummy; } ;


 struct sahara_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (struct sahara_sha_reqctx*,void const*,int) ;

__attribute__((used)) static int sahara_sha_import(struct ahash_request *req, const void *in)
{
 struct sahara_sha_reqctx *rctx = ahash_request_ctx(req);

 memcpy(rctx, in, sizeof(struct sahara_sha_reqctx));

 return 0;
}
