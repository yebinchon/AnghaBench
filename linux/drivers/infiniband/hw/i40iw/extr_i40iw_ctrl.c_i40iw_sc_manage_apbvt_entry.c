
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i40iw_sc_cqp {int dev; int polarity; } ;
struct i40iw_apbvt_info {int add; int port; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_CQPSQ_MAPT_ADDPORT ;
 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_MANAGE_APBVT ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (int ,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int set_64bit_val (int*,int,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_manage_apbvt_entry(
    struct i40iw_sc_cqp *cqp,
    struct i40iw_apbvt_info *info,
    u64 scratch,
    bool post_sq)
{
 u64 *wqe;
 u64 header;

 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;

 set_64bit_val(wqe, 16, info->port);

 header = LS_64(I40IW_CQP_OP_MANAGE_APBVT, I40IW_CQPSQ_OPCODE) |
   LS_64(info->add, I40IW_CQPSQ_MAPT_ADDPORT) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_WQE, "MANAGE_APBVT WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 if (post_sq)
  i40iw_sc_cqp_post_sq(cqp);
 return 0;
}
