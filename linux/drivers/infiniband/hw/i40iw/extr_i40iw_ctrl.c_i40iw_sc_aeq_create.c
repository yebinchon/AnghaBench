
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct i40iw_sc_cqp {int dev; scalar_t__ polarity; } ;
struct i40iw_sc_aeq {scalar_t__ virtual_map; scalar_t__ pbl_chunk_size; int first_pm_pbl_idx; int aeq_elem_pa; int elem_cnt; TYPE_1__* dev; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {struct i40iw_sc_cqp* cqp; } ;


 int I40IW_CQPSQ_AEQ_LPBLSIZE ;
 int I40IW_CQPSQ_AEQ_VMAP ;
 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_WQEVALID ;
 scalar_t__ I40IW_CQP_OP_CREATE_AEQ ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (scalar_t__,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int set_64bit_val (int*,int,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_aeq_create(struct i40iw_sc_aeq *aeq,
        u64 scratch,
        bool post_sq)
{
 u64 *wqe;
 struct i40iw_sc_cqp *cqp;
 u64 header;

 cqp = aeq->dev->cqp;
 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;
 set_64bit_val(wqe, 16, aeq->elem_cnt);
 set_64bit_val(wqe, 32,
        (aeq->virtual_map ? 0 : aeq->aeq_elem_pa));
 set_64bit_val(wqe, 48,
        (aeq->virtual_map ? aeq->first_pm_pbl_idx : 0));

 header = LS_64(I40IW_CQP_OP_CREATE_AEQ, I40IW_CQPSQ_OPCODE) |
   LS_64(aeq->pbl_chunk_size, I40IW_CQPSQ_AEQ_LPBLSIZE) |
   LS_64(aeq->virtual_map, I40IW_CQPSQ_AEQ_VMAP) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);
 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_WQE, "AEQ_CREATE WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);
 if (post_sq)
  i40iw_sc_cqp_post_sq(cqp);
 return 0;
}
