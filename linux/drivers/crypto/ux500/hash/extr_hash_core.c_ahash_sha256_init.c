
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oper_mode; int algorithm; int data_format; } ;
struct hash_ctx {int digestsize; TYPE_1__ config; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;


 int HASH_ALGO_SHA256 ;
 int HASH_DATA_8_BITS ;
 int HASH_OPER_MODE_HASH ;
 int SHA256_DIGEST_SIZE ;
 struct hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int hash_init (struct ahash_request*) ;

__attribute__((used)) static int ahash_sha256_init(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct hash_ctx *ctx = crypto_ahash_ctx(tfm);

 ctx->config.data_format = HASH_DATA_8_BITS;
 ctx->config.algorithm = HASH_ALGO_SHA256;
 ctx->config.oper_mode = HASH_OPER_MODE_HASH;
 ctx->digestsize = SHA256_DIGEST_SIZE;

 return hash_init(req);
}
