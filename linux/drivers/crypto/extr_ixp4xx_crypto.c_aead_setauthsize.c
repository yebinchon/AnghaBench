
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 int EINVAL ;
 int aead_setup (struct crypto_aead*,unsigned int) ;
 int crypto_aead_maxauthsize (struct crypto_aead*) ;

__attribute__((used)) static int aead_setauthsize(struct crypto_aead *tfm, unsigned int authsize)
{
 int max = crypto_aead_maxauthsize(tfm) >> 2;

 if ((authsize>>2) < 1 || (authsize>>2) > max || (authsize & 3))
  return -EINVAL;
 return aead_setup(tfm, authsize);
}
