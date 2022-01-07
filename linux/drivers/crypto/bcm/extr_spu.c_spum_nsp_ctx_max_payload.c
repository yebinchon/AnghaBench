
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef enum spu_cipher_mode { ____Placeholder_spu_cipher_mode } spu_cipher_mode ;
typedef enum spu_cipher_alg { ____Placeholder_spu_cipher_alg } spu_cipher_alg ;


 int CIPHER_MODE_XTS ;
 unsigned int SPUM_NSP_MAX_PAYLOAD ;
 scalar_t__ SPU_XTS_TWEAK_SIZE ;

u32 spum_nsp_ctx_max_payload(enum spu_cipher_alg cipher_alg,
        enum spu_cipher_mode cipher_mode,
        unsigned int blocksize)
{
 u32 max_payload = SPUM_NSP_MAX_PAYLOAD;
 u32 excess;


 if (cipher_mode == CIPHER_MODE_XTS)
  max_payload -= SPU_XTS_TWEAK_SIZE;

 excess = max_payload % blocksize;

 return max_payload - excess;
}
