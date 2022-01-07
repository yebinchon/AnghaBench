
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i40iw_sc_dev {struct i40iw_sc_cqp* cqp; } ;
struct i40iw_sc_cqp {int polarity; } ;
struct i40iw_dealloc_stag_info {int mr; int stag_idx; int pd_id; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_STAG_IDX ;
 int I40IW_CQPSQ_STAG_MR ;
 int I40IW_CQPSQ_STAG_PDID ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_DEALLOC_STAG ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (int ,int ) ;
 int i40iw_debug_buf (struct i40iw_sc_dev*,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int set_64bit_val (int*,int,int) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_dealloc_stag(
     struct i40iw_sc_dev *dev,
     struct i40iw_dealloc_stag_info *info,
     u64 scratch,
     bool post_sq)
{
 u64 header;
 u64 *wqe;
 struct i40iw_sc_cqp *cqp;

 cqp = dev->cqp;
 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;
 set_64bit_val(wqe,
        8,
        LS_64(info->pd_id, I40IW_CQPSQ_STAG_PDID));
 set_64bit_val(wqe,
        16,
        LS_64(info->stag_idx, I40IW_CQPSQ_STAG_IDX));

 header = LS_64(I40IW_CQP_OP_DEALLOC_STAG, I40IW_CQPSQ_OPCODE) |
   LS_64(info->mr, I40IW_CQPSQ_STAG_MR) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(dev, I40IW_DEBUG_WQE, "DEALLOC_STAG WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 if (post_sq)
  i40iw_sc_cqp_post_sq(cqp);
 return 0;
}
