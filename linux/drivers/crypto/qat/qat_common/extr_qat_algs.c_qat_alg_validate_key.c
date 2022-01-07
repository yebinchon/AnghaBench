
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ICP_QAT_HW_CIPHER_ALGO_AES128 ;
 int ICP_QAT_HW_CIPHER_ALGO_AES192 ;
 int ICP_QAT_HW_CIPHER_ALGO_AES256 ;
 int ICP_QAT_HW_CIPHER_XTS_MODE ;

__attribute__((used)) static int qat_alg_validate_key(int key_len, int *alg, int mode)
{
 if (mode != ICP_QAT_HW_CIPHER_XTS_MODE) {
  switch (key_len) {
  case 130:
   *alg = ICP_QAT_HW_CIPHER_ALGO_AES128;
   break;
  case 129:
   *alg = ICP_QAT_HW_CIPHER_ALGO_AES192;
   break;
  case 128:
   *alg = ICP_QAT_HW_CIPHER_ALGO_AES256;
   break;
  default:
   return -EINVAL;
  }
 } else {
  switch (key_len) {
  case 130 << 1:
   *alg = ICP_QAT_HW_CIPHER_ALGO_AES128;
   break;
  case 128 << 1:
   *alg = ICP_QAT_HW_CIPHER_ALGO_AES256;
   break;
  default:
   return -EINVAL;
  }
 }
 return 0;
}
