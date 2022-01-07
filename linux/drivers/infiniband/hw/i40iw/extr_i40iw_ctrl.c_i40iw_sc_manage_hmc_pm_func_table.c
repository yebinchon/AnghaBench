
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct i40iw_sc_cqp {int polarity; int dev; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_CQPSQ_MHMC_FREEPMFN ;
 int I40IW_CQPSQ_MHMC_VFIDX ;
 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_MANAGE_HMC_PM_FUNC_TABLE ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_INVALID_VF_ID ;
 int I40IW_ERR_RING_FULL ;
 scalar_t__ I40IW_MAX_VF_PER_PF ;
 int LS_64 (int,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_manage_hmc_pm_func_table(
    struct i40iw_sc_cqp *cqp,
    u64 scratch,
    u8 vf_index,
    bool free_pm_fcn,
    bool post_sq)
{
 u64 *wqe;
 u64 header;

 if (vf_index >= I40IW_MAX_VF_PER_PF)
  return I40IW_ERR_INVALID_VF_ID;
 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;

 header = LS_64(vf_index, I40IW_CQPSQ_MHMC_VFIDX) |
   LS_64(I40IW_CQP_OP_MANAGE_HMC_PM_FUNC_TABLE, I40IW_CQPSQ_OPCODE) |
   LS_64(free_pm_fcn, I40IW_CQPSQ_MHMC_FREEPMFN) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);
 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_WQE, "MANAGE_HMC_PM_FUNC_TABLE WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);
 if (post_sq)
  i40iw_sc_cqp_post_sq(cqp);
 return 0;
}
