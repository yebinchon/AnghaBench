
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skcipher_request {int iv; } ;
struct TYPE_3__ {int iv; } ;
struct TYPE_4__ {TYPE_1__ blkcipher; } ;
struct mv_cesa_op_ctx {TYPE_2__ ctx; } ;


 int CESA_SA_DESC_CFG_CRYPTCM_CBC ;
 int CESA_SA_DESC_CFG_CRYPTCM_MSK ;
 int DES_BLOCK_SIZE ;
 int memcpy (int ,int ,int ) ;
 int mv_cesa_des_op (struct skcipher_request*,struct mv_cesa_op_ctx*) ;
 int mv_cesa_update_op_cfg (struct mv_cesa_op_ctx*,int ,int ) ;

__attribute__((used)) static int mv_cesa_cbc_des_op(struct skcipher_request *req,
         struct mv_cesa_op_ctx *tmpl)
{
 mv_cesa_update_op_cfg(tmpl, CESA_SA_DESC_CFG_CRYPTCM_CBC,
         CESA_SA_DESC_CFG_CRYPTCM_MSK);

 memcpy(tmpl->ctx.blkcipher.iv, req->iv, DES_BLOCK_SIZE);

 return mv_cesa_des_op(req, tmpl);
}
