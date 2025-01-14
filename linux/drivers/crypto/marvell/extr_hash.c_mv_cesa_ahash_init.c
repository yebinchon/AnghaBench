
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_op_ctx {int dummy; } ;
struct mv_cesa_ahash_req {int algo_le; scalar_t__ len; struct mv_cesa_op_ctx op_tmpl; } ;
struct ahash_request {int dummy; } ;


 int CESA_SA_DESC_CFG_FIRST_FRAG ;
 int CESA_SA_DESC_CFG_FRAG_MSK ;
 int CESA_SA_DESC_CFG_OP_MAC_ONLY ;
 int CESA_SA_DESC_CFG_OP_MSK ;
 struct mv_cesa_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 int memset (struct mv_cesa_ahash_req*,int ,int) ;
 int mv_cesa_set_mac_op_frag_len (struct mv_cesa_op_ctx*,int ) ;
 int mv_cesa_set_mac_op_total_len (struct mv_cesa_op_ctx*,int ) ;
 int mv_cesa_update_op_cfg (struct mv_cesa_op_ctx*,int,int) ;

__attribute__((used)) static void mv_cesa_ahash_init(struct ahash_request *req,
         struct mv_cesa_op_ctx *tmpl, bool algo_le)
{
 struct mv_cesa_ahash_req *creq = ahash_request_ctx(req);

 memset(creq, 0, sizeof(*creq));
 mv_cesa_update_op_cfg(tmpl,
         CESA_SA_DESC_CFG_OP_MAC_ONLY |
         CESA_SA_DESC_CFG_FIRST_FRAG,
         CESA_SA_DESC_CFG_OP_MSK |
         CESA_SA_DESC_CFG_FRAG_MSK);
 mv_cesa_set_mac_op_total_len(tmpl, 0);
 mv_cesa_set_mac_op_frag_len(tmpl, 0);
 creq->op_tmpl = *tmpl;
 creq->len = 0;
 creq->algo_le = algo_le;
}
