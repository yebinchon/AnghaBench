
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tfm; } ;
struct skcipher_request {TYPE_1__ base; } ;
struct TYPE_5__ {int key; } ;
struct TYPE_6__ {TYPE_2__ blkcipher; } ;
struct mv_cesa_op_ctx {TYPE_3__ ctx; } ;
struct mv_cesa_des3_ctx {int key; } ;


 int CESA_SA_DESC_CFG_CRYPTM_3DES ;
 int CESA_SA_DESC_CFG_CRYPTM_MSK ;
 int DES3_EDE_KEY_SIZE ;
 struct mv_cesa_des3_ctx* crypto_tfm_ctx (int ) ;
 int memcpy (int ,int ,int ) ;
 int mv_cesa_skcipher_queue_req (struct skcipher_request*,struct mv_cesa_op_ctx*) ;
 int mv_cesa_update_op_cfg (struct mv_cesa_op_ctx*,int ,int ) ;

__attribute__((used)) static int mv_cesa_des3_op(struct skcipher_request *req,
      struct mv_cesa_op_ctx *tmpl)
{
 struct mv_cesa_des3_ctx *ctx = crypto_tfm_ctx(req->base.tfm);

 mv_cesa_update_op_cfg(tmpl, CESA_SA_DESC_CFG_CRYPTM_3DES,
         CESA_SA_DESC_CFG_CRYPTM_MSK);

 memcpy(tmpl->ctx.blkcipher.key, ctx->key, DES3_EDE_KEY_SIZE);

 return mv_cesa_skcipher_queue_req(req, tmpl);
}
