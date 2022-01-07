
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 int crypto_gcm_check_authsize (unsigned int) ;

__attribute__((used)) static int safexcel_aead_gcm_setauthsize(struct crypto_aead *tfm,
      unsigned int authsize)
{
 return crypto_gcm_check_authsize(authsize);
}
