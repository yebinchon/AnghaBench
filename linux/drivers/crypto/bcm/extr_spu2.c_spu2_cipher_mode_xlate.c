
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum spu_cipher_mode { ____Placeholder_spu_cipher_mode } spu_cipher_mode ;
typedef enum spu2_cipher_mode { ____Placeholder_spu2_cipher_mode } spu2_cipher_mode ;
 int EINVAL ;
 int SPU2_CIPHER_MODE_CBC ;
 int SPU2_CIPHER_MODE_CCM ;
 int SPU2_CIPHER_MODE_CFB ;
 int SPU2_CIPHER_MODE_CTR ;
 int SPU2_CIPHER_MODE_ECB ;
 int SPU2_CIPHER_MODE_GCM ;
 int SPU2_CIPHER_MODE_OFB ;
 int SPU2_CIPHER_MODE_XTS ;

__attribute__((used)) static int spu2_cipher_mode_xlate(enum spu_cipher_mode cipher_mode,
      enum spu2_cipher_mode *spu2_mode)
{
 switch (cipher_mode) {
 case 131:
  *spu2_mode = SPU2_CIPHER_MODE_ECB;
  break;
 case 135:
  *spu2_mode = SPU2_CIPHER_MODE_CBC;
  break;
 case 129:
  *spu2_mode = SPU2_CIPHER_MODE_OFB;
  break;
 case 133:
  *spu2_mode = SPU2_CIPHER_MODE_CFB;
  break;
 case 132:
  *spu2_mode = SPU2_CIPHER_MODE_CTR;
  break;
 case 134:
  *spu2_mode = SPU2_CIPHER_MODE_CCM;
  break;
 case 130:
  *spu2_mode = SPU2_CIPHER_MODE_GCM;
  break;
 case 128:
  *spu2_mode = SPU2_CIPHER_MODE_XTS;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
