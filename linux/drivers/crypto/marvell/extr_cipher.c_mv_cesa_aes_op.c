
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int tfm; } ;
struct skcipher_request {TYPE_1__ base; } ;
struct TYPE_6__ {int * key; } ;
struct TYPE_7__ {TYPE_2__ blkcipher; } ;
struct mv_cesa_op_ctx {TYPE_3__ ctx; } ;
struct TYPE_8__ {int key_length; int * key_enc; int * key_dec; } ;
struct mv_cesa_aes_ctx {TYPE_4__ aes; } ;


 int CESA_SA_DESC_CFG_AES_LEN_192 ;
 int CESA_SA_DESC_CFG_AES_LEN_256 ;
 int CESA_SA_DESC_CFG_AES_LEN_MSK ;
 int CESA_SA_DESC_CFG_CRYPTM_AES ;
 int CESA_SA_DESC_CFG_CRYPTM_MSK ;
 int CESA_SA_DESC_CFG_DIR_DEC ;
 int cpu_to_le32 (int ) ;
 struct mv_cesa_aes_ctx* crypto_tfm_ctx (int ) ;
 int mv_cesa_get_op_cfg (struct mv_cesa_op_ctx*) ;
 int mv_cesa_skcipher_queue_req (struct skcipher_request*,struct mv_cesa_op_ctx*) ;
 int mv_cesa_update_op_cfg (struct mv_cesa_op_ctx*,int ,int) ;

__attribute__((used)) static int mv_cesa_aes_op(struct skcipher_request *req,
     struct mv_cesa_op_ctx *tmpl)
{
 struct mv_cesa_aes_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
 int i;
 u32 *key;
 u32 cfg;

 cfg = CESA_SA_DESC_CFG_CRYPTM_AES;

 if (mv_cesa_get_op_cfg(tmpl) & CESA_SA_DESC_CFG_DIR_DEC)
  key = ctx->aes.key_dec;
 else
  key = ctx->aes.key_enc;

 for (i = 0; i < ctx->aes.key_length / sizeof(u32); i++)
  tmpl->ctx.blkcipher.key[i] = cpu_to_le32(key[i]);

 if (ctx->aes.key_length == 24)
  cfg |= CESA_SA_DESC_CFG_AES_LEN_192;
 else if (ctx->aes.key_length == 32)
  cfg |= CESA_SA_DESC_CFG_AES_LEN_256;

 mv_cesa_update_op_cfg(tmpl, cfg,
         CESA_SA_DESC_CFG_CRYPTM_MSK |
         CESA_SA_DESC_CFG_AES_LEN_MSK);

 return mv_cesa_skcipher_queue_req(req, tmpl);
}
