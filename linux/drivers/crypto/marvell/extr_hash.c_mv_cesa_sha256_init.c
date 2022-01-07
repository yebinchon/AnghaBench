
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_op_ctx {int dummy; } ;
struct mv_cesa_ahash_req {int * state; } ;
struct ahash_request {int dummy; } ;


 int CESA_SA_DESC_CFG_MACM_SHA256 ;
 int SHA256_H0 ;
 int SHA256_H1 ;
 int SHA256_H2 ;
 int SHA256_H3 ;
 int SHA256_H4 ;
 int SHA256_H5 ;
 int SHA256_H6 ;
 int SHA256_H7 ;
 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int mv_cesa_ahash_init (struct ahash_request*,struct mv_cesa_op_ctx*,int) ;
 int mv_cesa_set_op_cfg (struct mv_cesa_op_ctx*,int ) ;

__attribute__((used)) static int mv_cesa_sha256_init(struct ahash_request *req)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);
 struct mv_cesa_op_ctx tmpl = { };

 mv_cesa_set_op_cfg(&tmpl, CESA_SA_DESC_CFG_MACM_SHA256);

 mv_cesa_ahash_init(req, &tmpl, 0);

 creq->state[0] = SHA256_H0;
 creq->state[1] = SHA256_H1;
 creq->state[2] = SHA256_H2;
 creq->state[3] = SHA256_H3;
 creq->state[4] = SHA256_H4;
 creq->state[5] = SHA256_H5;
 creq->state[6] = SHA256_H6;
 creq->state[7] = SHA256_H7;

 return 0;
}
