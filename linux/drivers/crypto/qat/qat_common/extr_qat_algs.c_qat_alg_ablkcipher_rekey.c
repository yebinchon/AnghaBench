
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qat_alg_ablkcipher_ctx {int dec_fw_req; int enc_fw_req; int * dec_cd; int * enc_cd; } ;


 int memset (int *,int ,int) ;
 int qat_alg_ablkcipher_init_sessions (struct qat_alg_ablkcipher_ctx*,int const*,unsigned int,int) ;

__attribute__((used)) static int qat_alg_ablkcipher_rekey(struct qat_alg_ablkcipher_ctx *ctx,
        const u8 *key, unsigned int keylen,
        int mode)
{
 memset(ctx->enc_cd, 0, sizeof(*ctx->enc_cd));
 memset(ctx->dec_cd, 0, sizeof(*ctx->dec_cd));
 memset(&ctx->enc_fw_req, 0, sizeof(ctx->enc_fw_req));
 memset(&ctx->dec_fw_req, 0, sizeof(ctx->dec_fw_req));

 return qat_alg_ablkcipher_init_sessions(ctx, key, keylen, mode);
}
