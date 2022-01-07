
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum spu_cipher_mode { ____Placeholder_spu_cipher_mode } spu_cipher_mode ;


 int CIPHER_MODE_CCM ;
 int CIPHER_MODE_GCM ;
 int spum_gcm_ccm_pad_len (int,int) ;

u32 spum_assoc_resp_len(enum spu_cipher_mode cipher_mode,
   unsigned int assoc_len, unsigned int iv_len,
   bool is_encrypt)
{
 u32 buflen = 0;
 u32 pad;

 if (assoc_len)
  buflen = assoc_len;

 if (cipher_mode == CIPHER_MODE_GCM) {

  pad = spum_gcm_ccm_pad_len(cipher_mode, buflen);
  buflen += pad;
 }
 if (cipher_mode == CIPHER_MODE_CCM) {




  pad = spum_gcm_ccm_pad_len(cipher_mode, buflen + 2);
  buflen += pad;
 }

 return buflen;
}
