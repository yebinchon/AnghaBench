
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __be32 ;


 int QCE_AES_IV_LENGTH ;
 int memset (int *,int ,int) ;
 int qce_cpu_to_be32p_array (int *,int *,int) ;

__attribute__((used)) static void qce_xts_swapiv(__be32 *dst, const u8 *src, unsigned int ivsize)
{
 u8 swap[QCE_AES_IV_LENGTH];
 u32 i, j;

 if (ivsize > QCE_AES_IV_LENGTH)
  return;

 memset(swap, 0, QCE_AES_IV_LENGTH);

 for (i = (QCE_AES_IV_LENGTH - ivsize), j = ivsize - 1;
      i < QCE_AES_IV_LENGTH; i++, j--)
  swap[i] = src[j];

 qce_cpu_to_be32p_array(dst, swap, QCE_AES_IV_LENGTH);
}
