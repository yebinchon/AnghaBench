
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_ctx {int sw_cipher; void* mayverify; void* hmac_ctrl; } ;


 struct chcr_aead_ctx* AEAD_CTX (int ) ;
 void* CHCR_SCMD_HMAC_CTRL_DIV2 ;
 void* CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT ;
 void* CHCR_SCMD_HMAC_CTRL_NO_TRUNC ;
 void* CHCR_SCMD_HMAC_CTRL_PL1 ;
 void* CHCR_SCMD_HMAC_CTRL_PL3 ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;







 void* VERIFY_HW ;
 void* VERIFY_SW ;
 int a_ctx (struct crypto_aead*) ;
 int crypto_aead_setauthsize (int ,unsigned int) ;
 int crypto_tfm_set_flags (struct crypto_tfm*,int ) ;

__attribute__((used)) static int chcr_gcm_setauthsize(struct crypto_aead *tfm, unsigned int authsize)
{
 struct chcr_aead_ctx *aeadctx = AEAD_CTX(a_ctx(tfm));

 switch (authsize) {
 case 129:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL1;
  aeadctx->mayverify = VERIFY_HW;
  break;
 case 128:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_DIV2;
  aeadctx->mayverify = VERIFY_HW;
  break;
 case 134:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT;
  aeadctx->mayverify = VERIFY_HW;
  break;
 case 132:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL3;
  aeadctx->mayverify = VERIFY_HW;
  break;
 case 130:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_NO_TRUNC;
  aeadctx->mayverify = VERIFY_HW;
  break;
 case 133:
 case 131:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_NO_TRUNC;
  aeadctx->mayverify = VERIFY_SW;
  break;
 default:

    crypto_tfm_set_flags((struct crypto_tfm *) tfm,
   CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }
 return crypto_aead_setauthsize(aeadctx->sw_cipher, authsize);
}
