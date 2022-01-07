
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct chcr_aead_ctx {int sw_cipher; int mayverify; int hmac_ctrl; } ;


 struct chcr_aead_ctx* AEAD_CTX (int ) ;
 int CHCR_SCMD_HMAC_CTRL_NOP ;
 int VERIFY_HW ;
 int a_ctx (struct crypto_aead*) ;
 int crypto_aead_setauthsize (int ,unsigned int) ;

__attribute__((used)) static int chcr_authenc_null_setauthsize(struct crypto_aead *tfm,
     unsigned int authsize)
{
 struct chcr_aead_ctx *aeadctx = AEAD_CTX(a_ctx(tfm));

 aeadctx->hmac_ctrl = CHCR_SCMD_HMAC_CTRL_NOP;
 aeadctx->mayverify = VERIFY_HW;
 return crypto_aead_setauthsize(aeadctx->sw_cipher, authsize);
}
