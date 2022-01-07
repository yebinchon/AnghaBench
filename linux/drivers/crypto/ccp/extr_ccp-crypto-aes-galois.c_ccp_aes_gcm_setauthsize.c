
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int ccp_aes_gcm_setauthsize(struct crypto_aead *tfm,
       unsigned int authsize)
{
 switch (authsize) {
 case 16:
 case 15:
 case 14:
 case 13:
 case 12:
 case 8:
 case 4:
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
