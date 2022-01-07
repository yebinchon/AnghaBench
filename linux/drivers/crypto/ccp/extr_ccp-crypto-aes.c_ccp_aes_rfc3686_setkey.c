
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_3__ {int nonce; } ;
struct TYPE_4__ {TYPE_1__ aes; } ;
struct ccp_ctx {TYPE_2__ u; } ;


 unsigned int CTR_RFC3686_NONCE_SIZE ;
 int EINVAL ;
 int ccp_aes_setkey (struct crypto_ablkcipher*,int const*,unsigned int) ;
 int crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 struct ccp_ctx* crypto_tfm_ctx (int ) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int ccp_aes_rfc3686_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
      unsigned int key_len)
{
 struct ccp_ctx *ctx = crypto_tfm_ctx(crypto_ablkcipher_tfm(tfm));

 if (key_len < CTR_RFC3686_NONCE_SIZE)
  return -EINVAL;

 key_len -= CTR_RFC3686_NONCE_SIZE;
 memcpy(ctx->u.aes.nonce, key + key_len, CTR_RFC3686_NONCE_SIZE);

 return ccp_aes_setkey(tfm, key, key_len);
}
