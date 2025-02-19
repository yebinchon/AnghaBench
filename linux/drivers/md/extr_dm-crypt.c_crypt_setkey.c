
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tfms; int * tfms_aead; } ;
struct crypt_config {unsigned int key_mac_size; int tfms_count; scalar_t__ authenc_key; scalar_t__ key; TYPE_1__ cipher_tfm; } ;


 int EINVAL ;
 unsigned int crypt_authenckey_size (struct crypt_config*) ;
 int crypt_copy_authenckey (scalar_t__,scalar_t__,unsigned int,unsigned int) ;
 scalar_t__ crypt_integrity_aead (struct crypt_config*) ;
 scalar_t__ crypt_integrity_hmac (struct crypt_config*) ;
 unsigned int crypt_subkey_size (struct crypt_config*) ;
 int crypto_aead_setkey (int ,scalar_t__,unsigned int) ;
 int crypto_skcipher_setkey (int ,scalar_t__,unsigned int) ;
 int memzero_explicit (scalar_t__,unsigned int) ;

__attribute__((used)) static int crypt_setkey(struct crypt_config *cc)
{
 unsigned subkey_size;
 int err = 0, i, r;


 subkey_size = crypt_subkey_size(cc);

 if (crypt_integrity_hmac(cc)) {
  if (subkey_size < cc->key_mac_size)
   return -EINVAL;

  crypt_copy_authenckey(cc->authenc_key, cc->key,
          subkey_size - cc->key_mac_size,
          cc->key_mac_size);
 }

 for (i = 0; i < cc->tfms_count; i++) {
  if (crypt_integrity_hmac(cc))
   r = crypto_aead_setkey(cc->cipher_tfm.tfms_aead[i],
    cc->authenc_key, crypt_authenckey_size(cc));
  else if (crypt_integrity_aead(cc))
   r = crypto_aead_setkey(cc->cipher_tfm.tfms_aead[i],
            cc->key + (i * subkey_size),
            subkey_size);
  else
   r = crypto_skcipher_setkey(cc->cipher_tfm.tfms[i],
         cc->key + (i * subkey_size),
         subkey_size);
  if (r)
   err = r;
 }

 if (crypt_integrity_hmac(cc))
  memzero_explicit(cc->authenc_key, crypt_authenckey_size(cc));

 return err;
}
