
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int nonce; } ;
struct TYPE_4__ {TYPE_1__ ccm; } ;
struct nx_crypto_ctx {TYPE_2__ priv; } ;
struct crypto_aead {int base; } ;


 int EINVAL ;
 int ccm_aes_nx_set_key (struct crypto_aead*,int const*,unsigned int) ;
 struct nx_crypto_ctx* crypto_tfm_ctx (int *) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int ccm4309_aes_nx_set_key(struct crypto_aead *tfm,
      const u8 *in_key,
      unsigned int key_len)
{
 struct nx_crypto_ctx *nx_ctx = crypto_tfm_ctx(&tfm->base);

 if (key_len < 3)
  return -EINVAL;

 key_len -= 3;

 memcpy(nx_ctx->priv.ccm.nonce, in_key + key_len, 3);

 return ccm_aes_nx_set_key(tfm, in_key, key_len);
}
