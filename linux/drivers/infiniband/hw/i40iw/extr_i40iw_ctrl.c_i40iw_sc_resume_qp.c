
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int qp_id; } ;
struct i40iw_sc_qp {TYPE_1__ qp_uk; int qs_handle; } ;
struct i40iw_sc_cqp {int dev; int polarity; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_RESUMEQP_QPID ;
 int I40IW_CQPSQ_RESUMEQP_QSHANDLE ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_RESUME_QP ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (int ,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int set_64bit_val (int*,int,int) ;

enum i40iw_status_code i40iw_sc_resume_qp(struct i40iw_sc_cqp *cqp,
       struct i40iw_sc_qp *qp,
       u64 scratch)
{
 u64 header;
 u64 *wqe;

 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;
 set_64bit_val(wqe,
        16,
   LS_64(qp->qs_handle, I40IW_CQPSQ_RESUMEQP_QSHANDLE));

 header = LS_64(qp->qp_uk.qp_id, I40IW_CQPSQ_RESUMEQP_QPID) |
   LS_64(I40IW_CQP_OP_RESUME_QP, I40IW_CQPSQ_OPCODE) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_WQE, "RESUME_QP WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 i40iw_sc_cqp_post_sq(cqp);
 return 0;
}
