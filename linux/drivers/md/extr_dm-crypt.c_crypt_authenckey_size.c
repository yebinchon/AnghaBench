
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_authenc_key_param {int dummy; } ;
struct crypt_config {int dummy; } ;


 int RTA_SPACE (int) ;
 int crypt_subkey_size (struct crypt_config*) ;

__attribute__((used)) static unsigned crypt_authenckey_size(struct crypt_config *cc)
{
 return crypt_subkey_size(cc) + RTA_SPACE(sizeof(struct crypto_authenc_key_param));
}
