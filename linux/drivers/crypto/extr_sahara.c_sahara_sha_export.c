
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_sha_reqctx {int dummy; } ;
struct ahash_request {int dummy; } ;


 struct sahara_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (void*,struct sahara_sha_reqctx*,int) ;

__attribute__((used)) static int sahara_sha_export(struct ahash_request *req, void *out)
{
 struct sahara_sha_reqctx *rctx = ahash_request_ctx(req);

 memcpy(out, rctx, sizeof(struct sahara_sha_reqctx));

 return 0;
}
