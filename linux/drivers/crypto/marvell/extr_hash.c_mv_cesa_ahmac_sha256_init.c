
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int iv; } ;
struct TYPE_6__ {TYPE_2__ hash; } ;
struct mv_cesa_op_ctx {TYPE_3__ ctx; } ;
struct mv_cesa_hmac_ctx {int iv; } ;
struct TYPE_4__ {int tfm; } ;
struct ahash_request {TYPE_1__ base; } ;


 int CESA_SA_DESC_CFG_MACM_HMAC_SHA256 ;
 struct mv_cesa_hmac_ctx* crypto_tfm_ctx (int ) ;
 int memcpy (int ,int ,int) ;
 int mv_cesa_ahash_init (struct ahash_request*,struct mv_cesa_op_ctx*,int) ;
 int mv_cesa_set_op_cfg (struct mv_cesa_op_ctx*,int ) ;

__attribute__((used)) static int mv_cesa_ahmac_sha256_init(struct ahash_request *req)
{
 struct mv_cesa_hmac_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
 struct mv_cesa_op_ctx tmpl = { };

 mv_cesa_set_op_cfg(&tmpl, CESA_SA_DESC_CFG_MACM_HMAC_SHA256);
 memcpy(tmpl.ctx.hash.iv, ctx->iv, sizeof(ctx->iv));

 mv_cesa_ahash_init(req, &tmpl, 0);

 return 0;
}
