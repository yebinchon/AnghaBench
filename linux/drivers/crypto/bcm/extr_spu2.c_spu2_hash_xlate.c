
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum spu_cipher_type { ____Placeholder_spu_cipher_type } spu_cipher_type ;
typedef enum spu2_hash_type { ____Placeholder_spu2_hash_type } spu2_hash_type ;
typedef enum spu2_hash_mode { ____Placeholder_spu2_hash_mode } spu2_hash_mode ;
typedef enum hash_type { ____Placeholder_hash_type } hash_type ;
typedef enum hash_mode { ____Placeholder_hash_mode } hash_mode ;
typedef enum hash_alg { ____Placeholder_hash_alg } hash_alg ;





 int EINVAL ;
 int SPU2_HASH_TYPE_AES128 ;
 int SPU2_HASH_TYPE_AES192 ;
 int SPU2_HASH_TYPE_AES256 ;
 int SPU2_HASH_TYPE_MD5 ;
 int SPU2_HASH_TYPE_NONE ;
 int SPU2_HASH_TYPE_SHA1 ;
 int SPU2_HASH_TYPE_SHA224 ;
 int SPU2_HASH_TYPE_SHA256 ;
 int SPU2_HASH_TYPE_SHA384 ;
 int SPU2_HASH_TYPE_SHA3_224 ;
 int SPU2_HASH_TYPE_SHA3_256 ;
 int SPU2_HASH_TYPE_SHA3_384 ;
 int SPU2_HASH_TYPE_SHA3_512 ;
 int SPU2_HASH_TYPE_SHA512 ;
 int flow_log (char*,int,...) ;
 int spu2_hash_mode_xlate (int,int*) ;

__attribute__((used)) static int
spu2_hash_xlate(enum hash_alg hash_alg, enum hash_mode hash_mode,
  enum hash_type hash_type, enum spu_cipher_type ciph_type,
  enum spu2_hash_type *spu2_type, enum spu2_hash_mode *spu2_mode)
{
 int err;

 err = spu2_hash_mode_xlate(hash_mode, spu2_mode);
 if (err) {
  flow_log("Invalid hash mode %d\n", hash_mode);
  return err;
 }

 switch (hash_alg) {
 case 137:
  *spu2_type = SPU2_HASH_TYPE_NONE;
  break;
 case 138:
  *spu2_type = SPU2_HASH_TYPE_MD5;
  break;
 case 136:
  *spu2_type = SPU2_HASH_TYPE_SHA1;
  break;
 case 135:
  *spu2_type = SPU2_HASH_TYPE_SHA224;
  break;
 case 134:
  *spu2_type = SPU2_HASH_TYPE_SHA256;
  break;
 case 133:
  *spu2_type = SPU2_HASH_TYPE_SHA384;
  break;
 case 128:
  *spu2_type = SPU2_HASH_TYPE_SHA512;
  break;
 case 140:
  switch (ciph_type) {
  case 143:
   *spu2_type = SPU2_HASH_TYPE_AES128;
   break;
  case 142:
   *spu2_type = SPU2_HASH_TYPE_AES192;
   break;
  case 141:
   *spu2_type = SPU2_HASH_TYPE_AES256;
   break;
  default:
   err = -EINVAL;
  }
  break;
 case 132:
  *spu2_type = SPU2_HASH_TYPE_SHA3_224;
  break;
 case 131:
  *spu2_type = SPU2_HASH_TYPE_SHA3_256;
  break;
 case 130:
  *spu2_type = SPU2_HASH_TYPE_SHA3_384;
  break;
 case 129:
  *spu2_type = SPU2_HASH_TYPE_SHA3_512;
  break;
 case 139:
 default:
  err = -EINVAL;
  break;
 }

 if (err)
  flow_log("Invalid hash alg %d or type %d\n",
    hash_alg, hash_type);
 return err;
}
