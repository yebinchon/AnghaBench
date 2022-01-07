
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_hash_request_ctx {int digsize; int digest; } ;
struct ahash_request {int result; } ;


 int EINVAL ;
 struct img_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int img_hash_finish(struct ahash_request *req)
{
 struct img_hash_request_ctx *ctx = ahash_request_ctx(req);

 if (!req->result)
  return -EINVAL;

 memcpy(req->result, ctx->digest, ctx->digsize);

 return 0;
}
