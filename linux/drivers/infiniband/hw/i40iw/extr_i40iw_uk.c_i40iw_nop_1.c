
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct TYPE_6__ {int head; int size; } ;
struct i40iw_qp_uk {int swqe_polarity; TYPE_2__* sq_base; TYPE_3__ sq_ring; TYPE_1__* sq_wrtrk_array; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_5__ {int* elem; } ;
struct TYPE_4__ {int wqe_size; } ;


 int I40IWQPSQ_OPCODE ;
 int I40IWQPSQ_SIGCOMPL ;
 int I40IWQPSQ_VALID ;
 int I40IWQP_OP_NOP ;
 int I40IW_ERR_PARAM ;
 int I40IW_QP_WQE_MIN_SIZE ;
 size_t I40IW_RING_GETCURRENT_HEAD (TYPE_3__) ;
 int LS_64 (int,int ) ;
 int nop_signature ;
 int set_64bit_val (int*,int,int) ;
 int wmb () ;

__attribute__((used)) static enum i40iw_status_code i40iw_nop_1(struct i40iw_qp_uk *qp)
{
 u64 header, *wqe;
 u64 *wqe_0 = ((void*)0);
 u32 wqe_idx, peek_head;
 bool signaled = 0;

 if (!qp->sq_ring.head)
  return I40IW_ERR_PARAM;

 wqe_idx = I40IW_RING_GETCURRENT_HEAD(qp->sq_ring);
 wqe = qp->sq_base[wqe_idx].elem;

 qp->sq_wrtrk_array[wqe_idx].wqe_size = I40IW_QP_WQE_MIN_SIZE;

 peek_head = (qp->sq_ring.head + 1) % qp->sq_ring.size;
 wqe_0 = qp->sq_base[peek_head].elem;
 if (peek_head)
  wqe_0[3] = LS_64(!qp->swqe_polarity, I40IWQPSQ_VALID);
 else
  wqe_0[3] = LS_64(qp->swqe_polarity, I40IWQPSQ_VALID);

 set_64bit_val(wqe, 0, 0);
 set_64bit_val(wqe, 8, 0);
 set_64bit_val(wqe, 16, 0);

 header = LS_64(I40IWQP_OP_NOP, I40IWQPSQ_OPCODE) |
     LS_64(signaled, I40IWQPSQ_SIGCOMPL) |
     LS_64(qp->swqe_polarity, I40IWQPSQ_VALID) | nop_signature++;

 wmb();

 set_64bit_val(wqe, 24, header);
 return 0;
}
