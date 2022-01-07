
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct i40iw_cq_uk {int cqe_alloc_reg; int cq_id; int shadow_area; } ;
typedef enum i40iw_completion_notify { ____Placeholder_i40iw_completion_notify } i40iw_completion_notify ;


 int I40IW_CQ_DBSA_ARM_NEXT ;
 int I40IW_CQ_DBSA_ARM_NEXT_SE ;
 int I40IW_CQ_DBSA_ARM_SEQ_NUM ;
 int I40IW_CQ_DBSA_SW_CQ_SELECT ;
 int IW_CQ_COMPL_EVENT ;
 int LS_64 (int,int ) ;
 scalar_t__ RS_64 (int,int ) ;
 int get_64bit_val (int ,int,int*) ;
 int set_64bit_val (int ,int,int) ;
 int wmb () ;
 int writel (int ,int ) ;

__attribute__((used)) static void i40iw_cq_request_notification(struct i40iw_cq_uk *cq,
       enum i40iw_completion_notify cq_notify)
{
 u64 temp_val;
 u16 sw_cq_sel;
 u8 arm_next_se = 0;
 u8 arm_next = 0;
 u8 arm_seq_num;

 get_64bit_val(cq->shadow_area, 32, &temp_val);
 arm_seq_num = (u8)RS_64(temp_val, I40IW_CQ_DBSA_ARM_SEQ_NUM);
 arm_seq_num++;

 sw_cq_sel = (u16)RS_64(temp_val, I40IW_CQ_DBSA_SW_CQ_SELECT);
 arm_next_se = (u8)RS_64(temp_val, I40IW_CQ_DBSA_ARM_NEXT_SE);
 arm_next_se |= 1;
 if (cq_notify == IW_CQ_COMPL_EVENT)
  arm_next = 1;
 temp_val = LS_64(arm_seq_num, I40IW_CQ_DBSA_ARM_SEQ_NUM) |
     LS_64(sw_cq_sel, I40IW_CQ_DBSA_SW_CQ_SELECT) |
     LS_64(arm_next_se, I40IW_CQ_DBSA_ARM_NEXT_SE) |
     LS_64(arm_next, I40IW_CQ_DBSA_ARM_NEXT);

 set_64bit_val(cq->shadow_area, 32, temp_val);

 wmb();

 writel(cq->cq_id, cq->cqe_alloc_reg);
}
