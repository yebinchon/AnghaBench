
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum spu_cipher_type { ____Placeholder_spu_cipher_type } spu_cipher_type ;
typedef enum spu_cipher_mode { ____Placeholder_spu_cipher_mode } spu_cipher_mode ;
typedef enum spu_cipher_alg { ____Placeholder_spu_cipher_alg } spu_cipher_alg ;
typedef enum spu2_cipher_type { ____Placeholder_spu2_cipher_type } spu2_cipher_type ;
typedef enum spu2_cipher_mode { ____Placeholder_spu2_cipher_mode } spu2_cipher_mode ;
 int EINVAL ;
 int SPU2_CIPHER_TYPE_3DES ;
 int SPU2_CIPHER_TYPE_AES128 ;
 int SPU2_CIPHER_TYPE_AES192 ;
 int SPU2_CIPHER_TYPE_AES256 ;
 int SPU2_CIPHER_TYPE_DES ;
 int SPU2_CIPHER_TYPE_NONE ;
 int flow_log (char*,int,...) ;
 int spu2_cipher_mode_xlate (int,int*) ;

__attribute__((used)) static int spu2_cipher_xlate(enum spu_cipher_alg cipher_alg,
        enum spu_cipher_mode cipher_mode,
        enum spu_cipher_type cipher_type,
        enum spu2_cipher_type *spu2_type,
        enum spu2_cipher_mode *spu2_mode)
{
 int err;

 err = spu2_cipher_mode_xlate(cipher_mode, spu2_mode);
 if (err) {
  flow_log("Invalid cipher mode %d\n", cipher_mode);
  return err;
 }

 switch (cipher_alg) {
 case 132:
  *spu2_type = SPU2_CIPHER_TYPE_NONE;
  break;
 case 131:

  err = -EINVAL;
  *spu2_type = SPU2_CIPHER_TYPE_NONE;
  break;
 case 134:
  *spu2_type = SPU2_CIPHER_TYPE_DES;
  break;
 case 136:
  *spu2_type = SPU2_CIPHER_TYPE_3DES;
  break;
 case 135:
  switch (cipher_type) {
  case 130:
   *spu2_type = SPU2_CIPHER_TYPE_AES128;
   break;
  case 129:
   *spu2_type = SPU2_CIPHER_TYPE_AES192;
   break;
  case 128:
   *spu2_type = SPU2_CIPHER_TYPE_AES256;
   break;
  default:
   err = -EINVAL;
  }
  break;
 case 133:
 default:
  err = -EINVAL;
  break;
 }

 if (err)
  flow_log("Invalid cipher alg %d or type %d\n",
    cipher_alg, cipher_type);
 return err;
}
