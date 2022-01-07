
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc_cipher_ctx {int flow_mode; int cipher_mode; } ;





 int DES3_EDE_KEY_SIZE ;
 int DES_KEY_SIZE ;
 int DRV_CIPHER_BITLOCKER ;
 int DRV_CIPHER_ESSIV ;
 int DRV_CIPHER_XTS ;
 int EINVAL ;
 int SM4_KEY_SIZE ;




__attribute__((used)) static int validate_keys_sizes(struct cc_cipher_ctx *ctx_p, u32 size)
{
 switch (ctx_p->flow_mode) {
 case 130:
  switch (size) {
  case 133:
  case 132:
   if (ctx_p->cipher_mode != DRV_CIPHER_XTS &&
       ctx_p->cipher_mode != DRV_CIPHER_ESSIV &&
       ctx_p->cipher_mode != DRV_CIPHER_BITLOCKER)
    return 0;
   break;
  case 131:
   return 0;
  case (132 * 2):
  case (131 * 2):
   if (ctx_p->cipher_mode == DRV_CIPHER_XTS ||
       ctx_p->cipher_mode == DRV_CIPHER_ESSIV ||
       ctx_p->cipher_mode == DRV_CIPHER_BITLOCKER)
    return 0;
   break;
  default:
   break;
  }
  break;
 case 129:
  if (size == DES3_EDE_KEY_SIZE || size == DES_KEY_SIZE)
   return 0;
  break;
 case 128:
  if (size == SM4_KEY_SIZE)
   return 0;
 default:
  break;
 }
 return -EINVAL;
}
