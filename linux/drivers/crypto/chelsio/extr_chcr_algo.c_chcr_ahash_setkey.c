
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct hmac_ctx {int const* opad; int const* ipad; int base_hash; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_5__ {int tfm; } ;


 struct hmac_ctx* HMAC_CTX (int ) ;
 unsigned int IPAD_DATA ;
 unsigned int OPAD_DATA ;
 unsigned int SHA224_DIGEST_SIZE ;
 unsigned int SHA256_DIGEST_SIZE ;
 unsigned int SHA384_DIGEST_SIZE ;
 unsigned int SHA512_DIGEST_SIZE ;
 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int chcr_change_order (int const*,unsigned int) ;
 unsigned int chcr_compute_partial_hash (TYPE_1__*,int const*,int const*,unsigned int) ;
 unsigned int crypto_ahash_digestsize (struct crypto_ahash*) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 unsigned int crypto_shash_digest (TYPE_1__*,int const*,unsigned int,int const*) ;
 unsigned int crypto_tfm_alg_blocksize (int ) ;
 int h_ctx (struct crypto_ahash*) ;
 int memcpy (int const*,int const*,unsigned int) ;
 int memset (int const*,int ,unsigned int) ;
 TYPE_1__* shash ;

__attribute__((used)) static int chcr_ahash_setkey(struct crypto_ahash *tfm, const u8 *key,
        unsigned int keylen)
{
 struct hmac_ctx *hmacctx = HMAC_CTX(h_ctx(tfm));
 unsigned int digestsize = crypto_ahash_digestsize(tfm);
 unsigned int bs = crypto_tfm_alg_blocksize(crypto_ahash_tfm(tfm));
 unsigned int i, err = 0, updated_digestsize;

 SHASH_DESC_ON_STACK(shash, hmacctx->base_hash);





 shash->tfm = hmacctx->base_hash;
 if (keylen > bs) {
  err = crypto_shash_digest(shash, key, keylen,
       hmacctx->ipad);
  if (err)
   goto out;
  keylen = digestsize;
 } else {
  memcpy(hmacctx->ipad, key, keylen);
 }
 memset(hmacctx->ipad + keylen, 0, bs - keylen);
 memcpy(hmacctx->opad, hmacctx->ipad, bs);

 for (i = 0; i < bs / sizeof(int); i++) {
  *((unsigned int *)(&hmacctx->ipad) + i) ^= IPAD_DATA;
  *((unsigned int *)(&hmacctx->opad) + i) ^= OPAD_DATA;
 }

 updated_digestsize = digestsize;
 if (digestsize == SHA224_DIGEST_SIZE)
  updated_digestsize = SHA256_DIGEST_SIZE;
 else if (digestsize == SHA384_DIGEST_SIZE)
  updated_digestsize = SHA512_DIGEST_SIZE;
 err = chcr_compute_partial_hash(shash, hmacctx->ipad,
     hmacctx->ipad, digestsize);
 if (err)
  goto out;
 chcr_change_order(hmacctx->ipad, updated_digestsize);

 err = chcr_compute_partial_hash(shash, hmacctx->opad,
     hmacctx->opad, digestsize);
 if (err)
  goto out;
 chcr_change_order(hmacctx->opad, updated_digestsize);
out:
 return err;
}
