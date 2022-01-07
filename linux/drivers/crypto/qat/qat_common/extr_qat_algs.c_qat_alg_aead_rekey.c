
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qat_alg_aead_ctx {int dec_fw_req; int enc_fw_req; int * dec_cd; int * enc_cd; } ;
struct crypto_aead {int dummy; } ;


 int ICP_QAT_HW_CIPHER_CBC_MODE ;
 struct qat_alg_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int memset (int *,int ,int) ;
 int qat_alg_aead_init_sessions (struct crypto_aead*,int const*,unsigned int,int ) ;

__attribute__((used)) static int qat_alg_aead_rekey(struct crypto_aead *tfm, const uint8_t *key,
         unsigned int keylen)
{
 struct qat_alg_aead_ctx *ctx = crypto_aead_ctx(tfm);

 memset(ctx->enc_cd, 0, sizeof(*ctx->enc_cd));
 memset(ctx->dec_cd, 0, sizeof(*ctx->dec_cd));
 memset(&ctx->enc_fw_req, 0, sizeof(ctx->enc_fw_req));
 memset(&ctx->dec_fw_req, 0, sizeof(ctx->dec_fw_req));

 return qat_alg_aead_init_sessions(tfm, key, keylen,
       ICP_QAT_HW_CIPHER_CBC_MODE);
}
