
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_cipher_parms {int* iv_buf; int iv_len; } ;


 int CCM_B0_L_PRIME ;
 int CCM_B0_L_PRIME_SHIFT ;
 int CCM_ESP_L_VALUE ;
 int memmove (int*,int*,int) ;

void spu2_ccm_update_iv(unsigned int digestsize,
   struct spu_cipher_parms *cipher_parms,
   unsigned int assoclen, unsigned int chunksize,
   bool is_encrypt, bool is_esp)
{
 int L;






 if (is_esp)
  L = CCM_ESP_L_VALUE;
 else
  L = ((cipher_parms->iv_buf[0] & CCM_B0_L_PRIME) >>
        CCM_B0_L_PRIME_SHIFT) + 1;


 cipher_parms->iv_len -= (1 + L);
 memmove(cipher_parms->iv_buf, &cipher_parms->iv_buf[1],
  cipher_parms->iv_len);
}
