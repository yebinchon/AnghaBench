
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aead_algs ;
 int aes_disable ;
 int akcipher_algs ;
 int ccp_register_aes_aeads (int *) ;
 int ccp_register_aes_algs (int *) ;
 int ccp_register_aes_cmac_algs (int *) ;
 int ccp_register_aes_xts_algs (int *) ;
 int ccp_register_des3_algs (int *) ;
 int ccp_register_rsa_algs (int *) ;
 int ccp_register_sha_algs (int *) ;
 int cipher_algs ;
 int des3_disable ;
 int hash_algs ;
 int rsa_disable ;
 int sha_disable ;

__attribute__((used)) static int ccp_register_algs(void)
{
 int ret;

 if (!aes_disable) {
  ret = ccp_register_aes_algs(&cipher_algs);
  if (ret)
   return ret;

  ret = ccp_register_aes_cmac_algs(&hash_algs);
  if (ret)
   return ret;

  ret = ccp_register_aes_xts_algs(&cipher_algs);
  if (ret)
   return ret;

  ret = ccp_register_aes_aeads(&aead_algs);
  if (ret)
   return ret;
 }

 if (!des3_disable) {
  ret = ccp_register_des3_algs(&cipher_algs);
  if (ret)
   return ret;
 }

 if (!sha_disable) {
  ret = ccp_register_sha_algs(&hash_algs);
  if (ret)
   return ret;
 }

 if (!rsa_disable) {
  ret = ccp_register_rsa_algs(&akcipher_algs);
  if (ret)
   return ret;
 }

 return 0;
}
