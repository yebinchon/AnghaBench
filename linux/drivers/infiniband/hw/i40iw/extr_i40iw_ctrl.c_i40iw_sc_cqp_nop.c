
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i40iw_sc_cqp {int dev; int polarity; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_NOP ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (int ,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_cqp_nop(struct i40iw_sc_cqp *cqp,
            u64 scratch,
            bool post_sq)
{
 u64 *wqe;
 u64 header;

 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;
 header = LS_64(I40IW_CQP_OP_NOP, I40IW_CQPSQ_OPCODE) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);
 i40iw_insert_wqe_hdr(wqe, header);
 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_WQE, "NOP WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 if (post_sq)
  i40iw_sc_cqp_post_sq(cqp);
 return 0;
}
