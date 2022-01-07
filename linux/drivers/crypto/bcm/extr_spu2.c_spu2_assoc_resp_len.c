
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef enum spu_cipher_mode { ____Placeholder_spu_cipher_mode } spu_cipher_mode ;



u32 spu2_assoc_resp_len(enum spu_cipher_mode cipher_mode,
   unsigned int assoc_len, unsigned int iv_len,
   bool is_encrypt)
{
 u32 resp_len = assoc_len;

 if (is_encrypt)

  resp_len += iv_len;
 return resp_len;
}
