
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int dummy; } ;
typedef enum drv_hash_mode { ____Placeholder_drv_hash_mode } drv_hash_mode ;
typedef enum drv_cipher_mode { ____Placeholder_drv_cipher_mode } drv_cipher_mode ;


 int DRV_HASH_SM3 ;
 int set_aes_xor_crypto_key (struct cc_hw_desc*) ;
 int set_cipher_mode (struct cc_hw_desc*,int) ;

__attribute__((used)) static inline void set_hash_cipher_mode(struct cc_hw_desc *pdesc,
     enum drv_cipher_mode cipher_mode,
     enum drv_hash_mode hash_mode)
{
 set_cipher_mode(pdesc, cipher_mode);
 if (hash_mode == DRV_HASH_SM3)
  set_aes_xor_crypto_key(pdesc);
}
