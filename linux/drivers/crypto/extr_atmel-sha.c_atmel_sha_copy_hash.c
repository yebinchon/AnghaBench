
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_sha_reqctx {int flags; int dd; scalar_t__ digest; } ;
struct ahash_request {int dummy; } ;


 unsigned int SHA1_DIGEST_SIZE ;
 unsigned int SHA256_DIGEST_SIZE ;
 unsigned int SHA512_DIGEST_SIZE ;
 int SHA_FLAGS_ALGO_MASK ;
 int SHA_FLAGS_RESTORE ;





 int SHA_REG_DIGEST (unsigned int) ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_read (int ,int ) ;

__attribute__((used)) static void atmel_sha_copy_hash(struct ahash_request *req)
{
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 u32 *hash = (u32 *)ctx->digest;
 unsigned int i, hashsize;

 switch (ctx->flags & SHA_FLAGS_ALGO_MASK) {
 case 132:
  hashsize = SHA1_DIGEST_SIZE;
  break;

 case 131:
 case 130:
  hashsize = SHA256_DIGEST_SIZE;
  break;

 case 129:
 case 128:
  hashsize = SHA512_DIGEST_SIZE;
  break;

 default:

  return;
 }

 for (i = 0; i < hashsize / sizeof(u32); ++i)
  hash[i] = atmel_sha_read(ctx->dd, SHA_REG_DIGEST(i));
 ctx->flags |= SHA_FLAGS_RESTORE;
}
