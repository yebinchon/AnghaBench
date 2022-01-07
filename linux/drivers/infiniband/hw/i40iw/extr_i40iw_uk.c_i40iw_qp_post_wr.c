
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ head; } ;
struct TYPE_3__ {scalar_t__ head; } ;
struct i40iw_qp_uk {TYPE_2__ sq_ring; TYPE_1__ initial_ring; int wqe_alloc_reg; int qp_id; int shadow_area; } ;


 int I40IW_QP_DBSA_HW_SQ_TAIL ;
 scalar_t__ I40IW_RING_GETCURRENT_HEAD (TYPE_2__) ;
 scalar_t__ RS_64 (int ,int ) ;
 int get_64bit_val (int ,int ,int *) ;
 int mb () ;
 int writel (int ,int ) ;

void i40iw_qp_post_wr(struct i40iw_qp_uk *qp)
{
 u64 temp;
 u32 hw_sq_tail;
 u32 sw_sq_head;

 mb();


 get_64bit_val(qp->shadow_area, 0, &temp);

 hw_sq_tail = (u32)RS_64(temp, I40IW_QP_DBSA_HW_SQ_TAIL);
 sw_sq_head = I40IW_RING_GETCURRENT_HEAD(qp->sq_ring);
 if (sw_sq_head != hw_sq_tail) {
  if (sw_sq_head > qp->initial_ring.head) {
   if ((hw_sq_tail >= qp->initial_ring.head) &&
       (hw_sq_tail < sw_sq_head)) {
    writel(qp->qp_id, qp->wqe_alloc_reg);
   }
  } else if (sw_sq_head != qp->initial_ring.head) {
   if ((hw_sq_tail >= qp->initial_ring.head) ||
       (hw_sq_tail < sw_sq_head)) {
    writel(qp->qp_id, qp->wqe_alloc_reg);
   }
  }
 }

 qp->initial_ring.head = qp->sq_ring.head;
}
