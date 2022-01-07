
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {int dummy; } ;


 int crypt_free_tfms_aead (struct crypt_config*) ;
 int crypt_free_tfms_skcipher (struct crypt_config*) ;
 scalar_t__ crypt_integrity_aead (struct crypt_config*) ;

__attribute__((used)) static void crypt_free_tfms(struct crypt_config *cc)
{
 if (crypt_integrity_aead(cc))
  crypt_free_tfms_aead(cc);
 else
  crypt_free_tfms_skcipher(cc);
}
