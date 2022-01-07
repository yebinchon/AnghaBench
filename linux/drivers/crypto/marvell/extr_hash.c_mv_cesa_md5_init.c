
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_op_ctx {int dummy; } ;
struct mv_cesa_ahash_req {int * state; } ;
struct ahash_request {int dummy; } ;


 int CESA_SA_DESC_CFG_MACM_MD5 ;
 int MD5_H0 ;
 int MD5_H1 ;
 int MD5_H2 ;
 int MD5_H3 ;
 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int mv_cesa_ahash_init (struct ahash_request*,struct mv_cesa_op_ctx*,int) ;
 int mv_cesa_set_op_cfg (struct mv_cesa_op_ctx*,int ) ;

__attribute__((used)) static int mv_cesa_md5_init(struct ahash_request *req)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);
 struct mv_cesa_op_ctx tmpl = { };

 mv_cesa_set_op_cfg(&tmpl, CESA_SA_DESC_CFG_MACM_MD5);

 mv_cesa_ahash_init(req, &tmpl, 1);

 creq->state[0] = MD5_H0;
 creq->state[1] = MD5_H1;
 creq->state[2] = MD5_H2;
 creq->state[3] = MD5_H3;

 return 0;
}
