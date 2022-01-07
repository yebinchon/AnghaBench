
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int nonce; } ;
struct TYPE_4__ {TYPE_1__ ctr; } ;
struct nx_crypto_ctx {TYPE_2__ priv; } ;
struct crypto_tfm {int dummy; } ;


 unsigned int CTR_RFC3686_NONCE_SIZE ;
 int EINVAL ;
 struct nx_crypto_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int ctr_aes_nx_set_key (struct crypto_tfm*,int const*,unsigned int) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int ctr3686_aes_nx_set_key(struct crypto_tfm *tfm,
      const u8 *in_key,
      unsigned int key_len)
{
 struct nx_crypto_ctx *nx_ctx = crypto_tfm_ctx(tfm);

 if (key_len < CTR_RFC3686_NONCE_SIZE)
  return -EINVAL;

 memcpy(nx_ctx->priv.ctr.nonce,
        in_key + key_len - CTR_RFC3686_NONCE_SIZE,
        CTR_RFC3686_NONCE_SIZE);

 key_len -= CTR_RFC3686_NONCE_SIZE;

 return ctr_aes_nx_set_key(tfm, in_key, key_len);
}
