
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int va; int resid; int mr; } ;
struct rxe_qp {TYPE_1__ resp; } ;
struct rxe_pkt_info {int dummy; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;


 int RESPST_ERR_RKEY_VIOLATION ;
 int RESPST_NONE ;
 int payload_addr (struct rxe_pkt_info*) ;
 int payload_size (struct rxe_pkt_info*) ;
 int rxe_mem_copy (int ,int,int ,int,int ,int *) ;
 int to_mem_obj ;

__attribute__((used)) static enum resp_states write_data_in(struct rxe_qp *qp,
          struct rxe_pkt_info *pkt)
{
 enum resp_states rc = RESPST_NONE;
 int err;
 int data_len = payload_size(pkt);

 err = rxe_mem_copy(qp->resp.mr, qp->resp.va, payload_addr(pkt),
      data_len, to_mem_obj, ((void*)0));
 if (err) {
  rc = RESPST_ERR_RKEY_VIOLATION;
  goto out;
 }

 qp->resp.va += data_len;
 qp->resp.resid -= data_len;

out:
 return rc;
}
