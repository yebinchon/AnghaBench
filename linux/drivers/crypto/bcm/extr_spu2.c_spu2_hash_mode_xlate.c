
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum spu2_hash_mode { ____Placeholder_spu2_hash_mode } spu2_hash_mode ;
typedef enum hash_mode { ____Placeholder_hash_mode } hash_mode ;


 int EINVAL ;





 int SPU2_HASH_MODE_CCM ;
 int SPU2_HASH_MODE_CMAC ;
 int SPU2_HASH_MODE_GCM ;
 int SPU2_HASH_MODE_HMAC ;
 int SPU2_HASH_MODE_XCBC_MAC ;

__attribute__((used)) static int spu2_hash_mode_xlate(enum hash_mode hash_mode,
    enum spu2_hash_mode *spu2_mode)
{
 switch (hash_mode) {
 case 128:
  *spu2_mode = SPU2_HASH_MODE_XCBC_MAC;
  break;
 case 131:
  *spu2_mode = SPU2_HASH_MODE_CMAC;
  break;
 case 129:
  *spu2_mode = SPU2_HASH_MODE_HMAC;
  break;
 case 132:
  *spu2_mode = SPU2_HASH_MODE_CCM;
  break;
 case 130:
  *spu2_mode = SPU2_HASH_MODE_GCM;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
