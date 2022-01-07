
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 int EINVAL ;
 int nitrox_aead_setauthsize (struct crypto_aead*,unsigned int) ;

__attribute__((used)) static int nitrox_rfc4106_setauthsize(struct crypto_aead *aead,
          unsigned int authsize)
{
 switch (authsize) {
 case 8:
 case 12:
 case 16:
  break;
 default:
  return -EINVAL;
 }

 return nitrox_aead_setauthsize(aead, authsize);
}
