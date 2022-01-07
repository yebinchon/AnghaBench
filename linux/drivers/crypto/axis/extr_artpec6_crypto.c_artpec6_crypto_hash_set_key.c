
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct crypto_ahash {int base; } ;
struct artpec6_hashalg_context {size_t hmac_key_length; int hmac_key; int child_hash; } ;
struct TYPE_4__ {int tfm; } ;


 int EINVAL ;
 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 int crypto_shash_digest (TYPE_1__*,int const*,unsigned int,int ) ;
 size_t crypto_tfm_alg_blocksize (int ) ;
 struct artpec6_hashalg_context* crypto_tfm_ctx (int *) ;
 TYPE_1__* hdesc ;
 int memcpy (int ,int const*,unsigned int) ;
 int memset (int ,int ,int) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static int
artpec6_crypto_hash_set_key(struct crypto_ahash *tfm,
      const u8 *key, unsigned int keylen)
{
 struct artpec6_hashalg_context *tfm_ctx = crypto_tfm_ctx(&tfm->base);
 size_t blocksize;
 int ret;

 if (!keylen) {
  pr_err("Invalid length (%d) of HMAC key\n",
   keylen);
  return -EINVAL;
 }

 memset(tfm_ctx->hmac_key, 0, sizeof(tfm_ctx->hmac_key));

 blocksize = crypto_tfm_alg_blocksize(crypto_ahash_tfm(tfm));

 if (keylen > blocksize) {
  SHASH_DESC_ON_STACK(hdesc, tfm_ctx->child_hash);

  hdesc->tfm = tfm_ctx->child_hash;

  tfm_ctx->hmac_key_length = blocksize;
  ret = crypto_shash_digest(hdesc, key, keylen,
       tfm_ctx->hmac_key);
  if (ret)
   return ret;

 } else {
  memcpy(tfm_ctx->hmac_key, key, keylen);
  tfm_ctx->hmac_key_length = keylen;
 }

 return 0;
}
