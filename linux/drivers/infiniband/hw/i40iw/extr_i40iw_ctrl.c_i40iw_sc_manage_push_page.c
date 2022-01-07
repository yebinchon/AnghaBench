
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i40iw_sc_cqp {scalar_t__ polarity; int dev; } ;
struct i40iw_cqp_manage_push_page_info {scalar_t__ push_idx; scalar_t__ free_page; int qs_handle; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_CQPSQ_MPP_FREE_PAGE ;
 int I40IW_CQPSQ_MPP_PPIDX ;
 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_WQEVALID ;
 scalar_t__ I40IW_CQP_OP_MANAGE_PUSH_PAGES ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_INVALID_PUSH_PAGE_INDEX ;
 int I40IW_ERR_RING_FULL ;
 scalar_t__ I40IW_MAX_PUSH_PAGE_COUNT ;
 int LS_64 (scalar_t__,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int set_64bit_val (int*,int,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_manage_push_page(
    struct i40iw_sc_cqp *cqp,
    struct i40iw_cqp_manage_push_page_info *info,
    u64 scratch,
    bool post_sq)
{
 u64 *wqe;
 u64 header;

 if (info->push_idx >= I40IW_MAX_PUSH_PAGE_COUNT)
  return I40IW_ERR_INVALID_PUSH_PAGE_INDEX;

 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;

 set_64bit_val(wqe, 16, info->qs_handle);

 header = LS_64(info->push_idx, I40IW_CQPSQ_MPP_PPIDX) |
   LS_64(I40IW_CQP_OP_MANAGE_PUSH_PAGES, I40IW_CQPSQ_OPCODE) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID) |
   LS_64(info->free_page, I40IW_CQPSQ_MPP_FREE_PAGE);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_WQE, "MANAGE_PUSH_PAGES WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 if (post_sq)
  i40iw_sc_cqp_post_sq(cqp);
 return 0;
}
