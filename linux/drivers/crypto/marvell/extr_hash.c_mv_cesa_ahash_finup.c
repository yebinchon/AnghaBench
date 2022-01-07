
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_op_ctx {int dummy; } ;
struct mv_cesa_ahash_req {int last_req; int len; struct mv_cesa_op_ctx op_tmpl; } ;
struct ahash_request {scalar_t__ nbytes; } ;


 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int mv_cesa_ahash_queue_req (struct ahash_request*) ;
 int mv_cesa_set_mac_op_total_len (struct mv_cesa_op_ctx*,int ) ;

__attribute__((used)) static int mv_cesa_ahash_finup(struct ahash_request *req)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);
 struct mv_cesa_op_ctx *tmpl = &creq->op_tmpl;

 creq->len += req->nbytes;
 mv_cesa_set_mac_op_total_len(tmpl, creq->len);
 creq->last_req = 1;

 return mv_cesa_ahash_queue_req(req);
}
