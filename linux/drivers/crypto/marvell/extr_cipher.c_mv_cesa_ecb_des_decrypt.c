
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct mv_cesa_op_ctx {int dummy; } ;


 int CESA_SA_DESC_CFG_CRYPTCM_ECB ;
 int CESA_SA_DESC_CFG_DIR_DEC ;
 int mv_cesa_des_op (struct skcipher_request*,struct mv_cesa_op_ctx*) ;
 int mv_cesa_set_op_cfg (struct mv_cesa_op_ctx*,int) ;

__attribute__((used)) static int mv_cesa_ecb_des_decrypt(struct skcipher_request *req)
{
 struct mv_cesa_op_ctx tmpl;

 mv_cesa_set_op_cfg(&tmpl,
      CESA_SA_DESC_CFG_CRYPTCM_ECB |
      CESA_SA_DESC_CFG_DIR_DEC);

 return mv_cesa_des_op(req, &tmpl);
}
