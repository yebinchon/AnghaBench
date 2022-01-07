
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {int flags; int digest; } ;
struct ahash_request {int result; } ;


 int SHA1_DIGEST_SIZE ;
 int SHA224_DIGEST_SIZE ;
 int SHA256_DIGEST_SIZE ;
 int SHA384_DIGEST_SIZE ;
 int SHA512_DIGEST_SIZE ;
 int SHA_FLAGS_ALGO_MASK ;





 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void atmel_sha_copy_ready_hash(struct ahash_request *req)
{
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);

 if (!req->result)
  return;

 switch (ctx->flags & SHA_FLAGS_ALGO_MASK) {
 default:
 case 132:
  memcpy(req->result, ctx->digest, SHA1_DIGEST_SIZE);
  break;

 case 131:
  memcpy(req->result, ctx->digest, SHA224_DIGEST_SIZE);
  break;

 case 130:
  memcpy(req->result, ctx->digest, SHA256_DIGEST_SIZE);
  break;

 case 129:
  memcpy(req->result, ctx->digest, SHA384_DIGEST_SIZE);
  break;

 case 128:
  memcpy(req->result, ctx->digest, SHA512_DIGEST_SIZE);
  break;
 }
}
