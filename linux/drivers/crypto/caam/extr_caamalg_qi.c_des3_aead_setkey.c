
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_authenc_keys {int enckeylen; int enckey; } ;
struct crypto_aead {int dummy; } ;
typedef int keys ;


 int aead_setkey (struct crypto_aead*,int const*,unsigned int) ;
 int crypto_authenc_extractkeys (struct crypto_authenc_keys*,int const*,unsigned int) ;
 int memzero_explicit (struct crypto_authenc_keys*,int) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ verify_aead_des3_key (struct crypto_aead*,int ,int ) ;

__attribute__((used)) static int des3_aead_setkey(struct crypto_aead *aead, const u8 *key,
       unsigned int keylen)
{
 struct crypto_authenc_keys keys;
 int err;

 err = crypto_authenc_extractkeys(&keys, key, keylen);
 if (unlikely(err))
  return err;

 err = verify_aead_des3_key(aead, keys.enckey, keys.enckeylen) ?:
       aead_setkey(aead, key, keylen);

 memzero_explicit(&keys, sizeof(keys));
 return err;
}
