
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_ctx {int sw_cipher; void* mayverify; int hmac_ctrl; } ;


 struct chcr_aead_ctx* AEAD_CTX (int ) ;
 int CHCR_SCMD_HMAC_CTRL_DIV2 ;
 int CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT ;
 int CHCR_SCMD_HMAC_CTRL_NO_TRUNC ;
 int CHCR_SCMD_HMAC_CTRL_PL1 ;
 int CHCR_SCMD_HMAC_CTRL_PL2 ;
 int CHCR_SCMD_HMAC_CTRL_PL3 ;
 int CHCR_SCMD_HMAC_CTRL_TRUNC_RFC4366 ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;







 void* VERIFY_HW ;
 int a_ctx (struct crypto_aead*) ;
 int crypto_aead_setauthsize (int ,unsigned int) ;
 int crypto_tfm_set_flags (struct crypto_tfm*,int ) ;

__attribute__((used)) static int chcr_ccm_setauthsize(struct crypto_aead *tfm,
    unsigned int authsize)
{
 struct chcr_aead_ctx *aeadctx = AEAD_CTX(a_ctx(tfm));

 switch (authsize) {
 case 130:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL1;
  aeadctx->mayverify = VERIFY_HW;
  break;
 case 129:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL2;
  aeadctx->mayverify = VERIFY_HW;
  break;
 case 128:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_DIV2;
  aeadctx->mayverify = VERIFY_HW;
  break;
 case 134:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_TRUNC_RFC4366;
  aeadctx->mayverify = VERIFY_HW;
  break;
 case 133:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_IPSEC_96BIT;
  aeadctx->mayverify = VERIFY_HW;
  break;
 case 132:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_PL3;
  aeadctx->mayverify = VERIFY_HW;
  break;
 case 131:
  aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_NO_TRUNC;
  aeadctx->mayverify = VERIFY_HW;
  break;
 default:
  crypto_tfm_set_flags((struct crypto_tfm *)tfm,
         CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }
 return crypto_aead_setauthsize(aeadctx->sw_cipher, authsize);
}
