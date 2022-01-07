
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int qp_id; } ;
struct i40iw_sc_qp {TYPE_1__ qp_uk; } ;
struct i40iw_sc_cqp {int dev; int polarity; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_SUSPENDQP_QPID ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_SUSPEND_QP ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (int ,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;

enum i40iw_status_code i40iw_sc_suspend_qp(struct i40iw_sc_cqp *cqp,
        struct i40iw_sc_qp *qp,
        u64 scratch)
{
 u64 header;
 u64 *wqe;

 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;
 header = LS_64(qp->qp_uk.qp_id, I40IW_CQPSQ_SUSPENDQP_QPID) |
   LS_64(I40IW_CQP_OP_SUSPEND_QP, I40IW_CQPSQ_OPCODE) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_WQE, "SUSPEND_QP WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 i40iw_sc_cqp_post_sq(cqp);
 return 0;
}
