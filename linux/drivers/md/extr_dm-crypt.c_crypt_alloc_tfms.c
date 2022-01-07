
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {int dummy; } ;


 int crypt_alloc_tfms_aead (struct crypt_config*,char*) ;
 int crypt_alloc_tfms_skcipher (struct crypt_config*,char*) ;
 scalar_t__ crypt_integrity_aead (struct crypt_config*) ;

__attribute__((used)) static int crypt_alloc_tfms(struct crypt_config *cc, char *ciphermode)
{
 if (crypt_integrity_aead(cc))
  return crypt_alloc_tfms_aead(cc, ciphermode);
 else
  return crypt_alloc_tfms_skcipher(cc, ciphermode);
}
