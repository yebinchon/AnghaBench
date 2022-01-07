
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct i40iw_sc_cqp {int dev; int polarity; } ;
struct i40iw_dma_mem {scalar_t__ pa; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_COMMIT_FPM_VALUES ;
 scalar_t__ I40IW_CQP_WAIT_POLL_CQ ;
 scalar_t__ I40IW_CQP_WAIT_POLL_REGS ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_DONE_COUNT ;
 int I40IW_ERR_CQP_COMPL_ERROR ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (int ,int ) ;
 int i40iw_cqp_poll_registers (struct i40iw_sc_cqp*,scalar_t__,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_get_cqp_reg_info (struct i40iw_sc_cqp*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int i40iw_sc_commit_fpm_values_done (struct i40iw_sc_cqp*) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int set_64bit_val (int*,int,scalar_t__) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_commit_fpm_values(
     struct i40iw_sc_cqp *cqp,
     u64 scratch,
     u8 hmc_fn_id,
     struct i40iw_dma_mem *commit_fpm_mem,
     bool post_sq,
     u8 wait_type)
{
 u64 *wqe;
 u64 header;
 u32 tail, val, error;
 enum i40iw_status_code ret_code = 0;

 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;

 set_64bit_val(wqe, 16, hmc_fn_id);
 set_64bit_val(wqe, 32, commit_fpm_mem->pa);

 header = LS_64(I40IW_CQP_OP_COMMIT_FPM_VALUES, I40IW_CQPSQ_OPCODE) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_WQE, "COMMIT_FPM_VALUES WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 i40iw_get_cqp_reg_info(cqp, &val, &tail, &error);
 if (error)
  return I40IW_ERR_CQP_COMPL_ERROR;

 if (post_sq) {
  i40iw_sc_cqp_post_sq(cqp);

  if (wait_type == I40IW_CQP_WAIT_POLL_REGS)
   ret_code = i40iw_cqp_poll_registers(cqp, tail, I40IW_DONE_COUNT);
  else if (wait_type == I40IW_CQP_WAIT_POLL_CQ)
   ret_code = i40iw_sc_commit_fpm_values_done(cqp);
 }

 return ret_code;
}
