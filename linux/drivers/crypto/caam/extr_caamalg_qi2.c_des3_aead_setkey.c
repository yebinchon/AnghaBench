
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_authenc_keys {scalar_t__ enckeylen; int enckey; } ;
struct crypto_aead {int dummy; } ;
typedef int keys ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 scalar_t__ DES3_EDE_KEY_SIZE ;
 int EINVAL ;
 int aead_setkey (struct crypto_aead*,int const*,unsigned int) ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 int crypto_aead_tfm (struct crypto_aead*) ;
 int crypto_authenc_extractkeys (struct crypto_authenc_keys*,int const*,unsigned int) ;
 scalar_t__ crypto_des3_ede_verify_key (int ,int ) ;
 int memzero_explicit (struct crypto_authenc_keys*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int des3_aead_setkey(struct crypto_aead *aead, const u8 *key,
       unsigned int keylen)
{
 struct crypto_authenc_keys keys;
 int err;

 err = crypto_authenc_extractkeys(&keys, key, keylen);
 if (unlikely(err))
  goto badkey;

 err = -EINVAL;
 if (keys.enckeylen != DES3_EDE_KEY_SIZE)
  goto badkey;

 err = crypto_des3_ede_verify_key(crypto_aead_tfm(aead), keys.enckey) ?:
       aead_setkey(aead, key, keylen);

out:
 memzero_explicit(&keys, sizeof(keys));
 return err;

badkey:
 crypto_aead_set_flags(aead, CRYPTO_TFM_RES_BAD_KEY_LEN);
 goto out;
}
