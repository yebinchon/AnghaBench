
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {int flags; size_t block_size; void* hash_size; } ;
struct atmel_sha_hmac_ctx {int (* resume ) (struct atmel_sha_dev*) ;scalar_t__ ipad; int hkey; } ;
struct atmel_sha_dev {struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;
typedef int (* atmel_sha_fn_t ) (struct atmel_sha_dev*) ;


 int EINVAL ;
 size_t SHA1_BLOCK_SIZE ;
 void* SHA1_DIGEST_SIZE ;
 size_t SHA224_BLOCK_SIZE ;
 size_t SHA256_BLOCK_SIZE ;
 void* SHA256_DIGEST_SIZE ;
 size_t SHA384_BLOCK_SIZE ;
 size_t SHA512_BLOCK_SIZE ;
 void* SHA512_DIGEST_SIZE ;
 int SHA_FLAGS_ALGO_MASK ;





 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_complete (struct atmel_sha_dev*,int ) ;
 int atmel_sha_hmac_compute_ipad_hash (struct atmel_sha_dev*) ;
 int atmel_sha_hmac_key_get (int *,int const**,unsigned int*) ;
 int atmel_sha_hmac_prehash_key (struct atmel_sha_dev*,int const*,unsigned int) ;
 struct atmel_sha_hmac_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 scalar_t__ likely (int) ;
 int memcpy (int *,int const*,unsigned int) ;
 int memset (int *,int ,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atmel_sha_hmac_setup(struct atmel_sha_dev *dd,
    atmel_sha_fn_t resume)
{
 struct ahash_request *req = dd->req;
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct atmel_sha_hmac_ctx *hmac = crypto_ahash_ctx(tfm);
 unsigned int keylen;
 const u8 *key;
 size_t bs;

 hmac->resume = resume;
 switch (ctx->flags & SHA_FLAGS_ALGO_MASK) {
 case 132:
  ctx->block_size = SHA1_BLOCK_SIZE;
  ctx->hash_size = SHA1_DIGEST_SIZE;
  break;

 case 131:
  ctx->block_size = SHA224_BLOCK_SIZE;
  ctx->hash_size = SHA256_DIGEST_SIZE;
  break;

 case 130:
  ctx->block_size = SHA256_BLOCK_SIZE;
  ctx->hash_size = SHA256_DIGEST_SIZE;
  break;

 case 129:
  ctx->block_size = SHA384_BLOCK_SIZE;
  ctx->hash_size = SHA512_DIGEST_SIZE;
  break;

 case 128:
  ctx->block_size = SHA512_BLOCK_SIZE;
  ctx->hash_size = SHA512_DIGEST_SIZE;
  break;

 default:
  return atmel_sha_complete(dd, -EINVAL);
 }
 bs = ctx->block_size;

 if (likely(!atmel_sha_hmac_key_get(&hmac->hkey, &key, &keylen)))
  return resume(dd);


 if (unlikely(keylen > bs))
  return atmel_sha_hmac_prehash_key(dd, key, keylen);


 memcpy((u8 *)hmac->ipad, key, keylen);
 memset((u8 *)hmac->ipad + keylen, 0, bs - keylen);
 return atmel_sha_hmac_compute_ipad_hash(dd);
}
