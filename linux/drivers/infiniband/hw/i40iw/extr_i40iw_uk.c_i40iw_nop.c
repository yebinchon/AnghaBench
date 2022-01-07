
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i40iw_qp_uk {int swqe_polarity; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IWQPSQ_OPCODE ;
 int I40IWQPSQ_SIGCOMPL ;
 int I40IWQPSQ_VALID ;
 int I40IWQP_OP_NOP ;
 int I40IW_ERR_QP_TOOMANY_WRS_POSTED ;
 int I40IW_QP_WQE_MIN_SIZE ;
 int LS_64 (int,int ) ;
 int* i40iw_qp_get_next_send_wqe (struct i40iw_qp_uk*,int *,int ,int ,int) ;
 int i40iw_qp_post_wr (struct i40iw_qp_uk*) ;
 int set_64bit_val (int*,int,int) ;
 int wmb () ;

enum i40iw_status_code i40iw_nop(struct i40iw_qp_uk *qp,
     u64 wr_id,
     bool signaled,
     bool post_sq)
{
 u64 header, *wqe;
 u32 wqe_idx;

 wqe = i40iw_qp_get_next_send_wqe(qp, &wqe_idx, I40IW_QP_WQE_MIN_SIZE, 0, wr_id);
 if (!wqe)
  return I40IW_ERR_QP_TOOMANY_WRS_POSTED;
 set_64bit_val(wqe, 0, 0);
 set_64bit_val(wqe, 8, 0);
 set_64bit_val(wqe, 16, 0);

 header = LS_64(I40IWQP_OP_NOP, I40IWQPSQ_OPCODE) |
     LS_64(signaled, I40IWQPSQ_SIGCOMPL) |
     LS_64(qp->swqe_polarity, I40IWQPSQ_VALID);

 wmb();

 set_64bit_val(wqe, 24, header);
 if (post_sq)
  i40iw_qp_post_wr(qp);

 return 0;
}
