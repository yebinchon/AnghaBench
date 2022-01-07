
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_cipher_ctx {int flow_mode; int cipher_mode; } ;


 unsigned int AES_BLOCK_SIZE ;
 unsigned int DES_BLOCK_SIZE ;
 int EINVAL ;
 int IS_ALIGNED (unsigned int,unsigned int) ;
 unsigned int SM4_BLOCK_SIZE ;




__attribute__((used)) static int validate_data_size(struct cc_cipher_ctx *ctx_p,
         unsigned int size)
{
 switch (ctx_p->flow_mode) {
 case 130:
  switch (ctx_p->cipher_mode) {
  case 131:
  case 136:
   if (size >= AES_BLOCK_SIZE)
    return 0;
   break;
  case 132:
  case 135:
    return 0;
  case 134:
  case 137:
  case 133:
  case 138:
   if (IS_ALIGNED(size, AES_BLOCK_SIZE))
    return 0;
   break;
  default:
   break;
  }
  break;
 case 129:
  if (IS_ALIGNED(size, DES_BLOCK_SIZE))
   return 0;
  break;
 case 128:
  switch (ctx_p->cipher_mode) {
  case 135:
   return 0;
  case 134:
  case 137:
   if (IS_ALIGNED(size, SM4_BLOCK_SIZE))
    return 0;
  default:
   break;
  }
 default:
  break;
 }
 return -EINVAL;
}
