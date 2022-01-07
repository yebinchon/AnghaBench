
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct i40iw_sc_dev {struct i40iw_sc_cqp* cqp; } ;
struct i40iw_sc_cqp {int polarity; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_STAG_IDX ;
 int I40IW_CQPSQ_STAG_PDID ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_ALLOC_STAG ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (int ,int ) ;
 int i40iw_debug_buf (struct i40iw_sc_dev*,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int set_64bit_val (int*,int,int) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_mw_alloc(
     struct i40iw_sc_dev *dev,
     u64 scratch,
     u32 mw_stag_index,
     u16 pd_id,
     bool post_sq)
{
 u64 header;
 struct i40iw_sc_cqp *cqp;
 u64 *wqe;

 cqp = dev->cqp;
 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;
 set_64bit_val(wqe, 8, LS_64(pd_id, I40IW_CQPSQ_STAG_PDID));
 set_64bit_val(wqe,
        16,
        LS_64(mw_stag_index, I40IW_CQPSQ_STAG_IDX));

 header = LS_64(I40IW_CQP_OP_ALLOC_STAG, I40IW_CQPSQ_OPCODE) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(dev, I40IW_DEBUG_WQE, "MW_ALLOC WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 if (post_sq)
  i40iw_sc_cqp_post_sq(cqp);
 return 0;
}
