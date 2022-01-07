
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct algo_param {int result_size; int auth_mode; void* mk_size; } ;


 void* CHCR_KEYCTX_MAC_KEY_SIZE_160 ;
 void* CHCR_KEYCTX_MAC_KEY_SIZE_256 ;
 void* CHCR_KEYCTX_MAC_KEY_SIZE_512 ;
 int CHCR_SCMD_AUTH_MODE_SHA1 ;
 int CHCR_SCMD_AUTH_MODE_SHA224 ;
 int CHCR_SCMD_AUTH_MODE_SHA256 ;
 int CHCR_SCMD_AUTH_MODE_SHA512_384 ;
 int CHCR_SCMD_AUTH_MODE_SHA512_512 ;
 int EINVAL ;





 int pr_err (char*) ;

__attribute__((used)) static int get_alg_config(struct algo_param *params,
     unsigned int auth_size)
{
 switch (auth_size) {
 case 132:
  params->mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_160;
  params->auth_mode = CHCR_SCMD_AUTH_MODE_SHA1;
  params->result_size = 132;
  break;
 case 131:
  params->mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_256;
  params->auth_mode = CHCR_SCMD_AUTH_MODE_SHA224;
  params->result_size = 130;
  break;
 case 130:
  params->mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_256;
  params->auth_mode = CHCR_SCMD_AUTH_MODE_SHA256;
  params->result_size = 130;
  break;
 case 129:
  params->mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_512;
  params->auth_mode = CHCR_SCMD_AUTH_MODE_SHA512_384;
  params->result_size = 128;
  break;
 case 128:
  params->mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_512;
  params->auth_mode = CHCR_SCMD_AUTH_MODE_SHA512_512;
  params->result_size = 128;
  break;
 default:
  pr_err("chcr : ERROR, unsupported digest size\n");
  return -EINVAL;
 }
 return 0;
}
