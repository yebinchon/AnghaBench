
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_authenc_keys {int enckeylen; } ;
struct crypto_aead {int dummy; } ;
typedef int keys ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EFAULT ;
 int EINVAL ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 scalar_t__ crypto_authenc_extractkeys (struct crypto_authenc_keys*,int const*,unsigned int) ;
 int memzero_explicit (struct crypto_authenc_keys*,int) ;
 scalar_t__ qat_alg_aead_init_dec_session (struct crypto_aead*,int,struct crypto_authenc_keys*,int) ;
 scalar_t__ qat_alg_aead_init_enc_session (struct crypto_aead*,int,struct crypto_authenc_keys*,int) ;
 scalar_t__ qat_alg_validate_key (int ,int*,int) ;

__attribute__((used)) static int qat_alg_aead_init_sessions(struct crypto_aead *tfm, const u8 *key,
          unsigned int keylen, int mode)
{
 struct crypto_authenc_keys keys;
 int alg;

 if (crypto_authenc_extractkeys(&keys, key, keylen))
  goto bad_key;

 if (qat_alg_validate_key(keys.enckeylen, &alg, mode))
  goto bad_key;

 if (qat_alg_aead_init_enc_session(tfm, alg, &keys, mode))
  goto error;

 if (qat_alg_aead_init_dec_session(tfm, alg, &keys, mode))
  goto error;

 memzero_explicit(&keys, sizeof(keys));
 return 0;
bad_key:
 crypto_aead_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
 memzero_explicit(&keys, sizeof(keys));
 return -EINVAL;
error:
 memzero_explicit(&keys, sizeof(keys));
 return -EFAULT;
}
