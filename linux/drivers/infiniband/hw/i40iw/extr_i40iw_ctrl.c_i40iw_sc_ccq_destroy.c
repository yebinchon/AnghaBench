
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct i40iw_sc_cqp {int polarity; int process_cqp_sds; int dev; } ;
struct TYPE_4__ {int cq_id; int avoid_mem_cflct; int cq_size; } ;
struct i40iw_sc_cq {int ceq_id_valid; int ceq_id; int ceqe_mask; int tph_en; TYPE_2__ cq_uk; int shadow_area_pa; TYPE_1__* dev; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_3__ {struct i40iw_sc_cqp* cqp; } ;


 int I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT ;
 int I40IW_CQPSQ_CQ_CEQID ;
 int I40IW_CQPSQ_CQ_CEQIDVALID ;
 int I40IW_CQPSQ_CQ_ENCEQEMASK ;
 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_TPHEN ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_DESTROY_CQ ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_CQP_COMPL_ERROR ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (int,int ) ;
 int RS_64_1 (struct i40iw_sc_cq*,int) ;
 int i40iw_cqp_poll_registers (struct i40iw_sc_cqp*,scalar_t__,int) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_get_cqp_reg_info (struct i40iw_sc_cqp*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int i40iw_update_sds_noccq ;
 int set_64bit_val (int*,int,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_ccq_destroy(struct i40iw_sc_cq *ccq,
         u64 scratch,
         bool post_sq)
{
 struct i40iw_sc_cqp *cqp;
 u64 *wqe;
 u64 header;
 enum i40iw_status_code ret_code = 0;
 u32 tail, val, error;

 cqp = ccq->dev->cqp;
 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;
 set_64bit_val(wqe, 0, ccq->cq_uk.cq_size);
 set_64bit_val(wqe, 8, RS_64_1(ccq, 1));
 set_64bit_val(wqe, 40, ccq->shadow_area_pa);

 header = ccq->cq_uk.cq_id |
   LS_64((ccq->ceq_id_valid ? ccq->ceq_id : 0), I40IW_CQPSQ_CQ_CEQID) |
   LS_64(I40IW_CQP_OP_DESTROY_CQ, I40IW_CQPSQ_OPCODE) |
   LS_64(ccq->ceqe_mask, I40IW_CQPSQ_CQ_ENCEQEMASK) |
   LS_64(ccq->ceq_id_valid, I40IW_CQPSQ_CQ_CEQIDVALID) |
   LS_64(ccq->tph_en, I40IW_CQPSQ_TPHEN) |
   LS_64(ccq->cq_uk.avoid_mem_cflct, I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_WQE, "CCQ_DESTROY WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 i40iw_get_cqp_reg_info(cqp, &val, &tail, &error);
 if (error)
  return I40IW_ERR_CQP_COMPL_ERROR;

 if (post_sq) {
  i40iw_sc_cqp_post_sq(cqp);
  ret_code = i40iw_cqp_poll_registers(cqp, tail, 1000);
 }

 cqp->process_cqp_sds = i40iw_update_sds_noccq;

 return ret_code;
}
