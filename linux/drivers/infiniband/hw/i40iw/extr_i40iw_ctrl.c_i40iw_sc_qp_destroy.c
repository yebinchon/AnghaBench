
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int qp_id; } ;
struct i40iw_sc_qp {int qp_type; TYPE_3__ qp_uk; int shadow_area_pa; int hw_host_ctx_pa; TYPE_2__* pd; } ;
struct i40iw_sc_cqp {int polarity; int dev; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {struct i40iw_sc_cqp* cqp; } ;


 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_QP_IGNOREMWBOUND ;
 int I40IW_CQPSQ_QP_QPTYPE ;
 int I40IW_CQPSQ_QP_REMOVEHASHENTRY ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_DESTROY_QP ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (int,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int i40iw_qp_rem_qos (struct i40iw_sc_qp*) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int set_64bit_val (int*,int,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_qp_destroy(
     struct i40iw_sc_qp *qp,
     u64 scratch,
     bool remove_hash_idx,
     bool ignore_mw_bnd,
     bool post_sq)
{
 u64 *wqe;
 struct i40iw_sc_cqp *cqp;
 u64 header;

 i40iw_qp_rem_qos(qp);
 cqp = qp->pd->dev->cqp;
 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;
 set_64bit_val(wqe, 16, qp->hw_host_ctx_pa);
 set_64bit_val(wqe, 40, qp->shadow_area_pa);

 header = qp->qp_uk.qp_id |
   LS_64(I40IW_CQP_OP_DESTROY_QP, I40IW_CQPSQ_OPCODE) |
   LS_64(qp->qp_type, I40IW_CQPSQ_QP_QPTYPE) |
   LS_64(ignore_mw_bnd, I40IW_CQPSQ_QP_IGNOREMWBOUND) |
   LS_64(remove_hash_idx, I40IW_CQPSQ_QP_REMOVEHASHENTRY) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);
 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_WQE, "QP_DESTROY WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 if (post_sq)
  i40iw_sc_cqp_post_sq(cqp);
 return 0;
}
