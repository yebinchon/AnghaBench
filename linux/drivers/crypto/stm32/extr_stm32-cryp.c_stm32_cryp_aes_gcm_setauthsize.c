
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 unsigned int AES_BLOCK_SIZE ;
 int EINVAL ;

__attribute__((used)) static int stm32_cryp_aes_gcm_setauthsize(struct crypto_aead *tfm,
       unsigned int authsize)
{
 return authsize == AES_BLOCK_SIZE ? 0 : -EINVAL;
}
