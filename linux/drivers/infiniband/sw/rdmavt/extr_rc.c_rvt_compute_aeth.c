
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_8__ {scalar_t__ size; TYPE_3__* kwq; TYPE_2__* wq; } ;
struct TYPE_5__ {scalar_t__ srq; } ;
struct rvt_qp {scalar_t__ r_msn; TYPE_4__ r_rq; scalar_t__ ip; TYPE_1__ ibqp; } ;
typedef int __be32 ;
struct TYPE_7__ {int tail; int head; int count; } ;
struct TYPE_6__ {int tail; int head; } ;


 scalar_t__ IB_AETH_CREDIT_INVAL ;
 scalar_t__ IB_AETH_CREDIT_SHIFT ;
 scalar_t__ IB_MSN_MASK ;
 scalar_t__ RDMA_READ_UAPI_ATOMIC (int ) ;
 scalar_t__ READ_ONCE (int ) ;
 int cpu_to_be32 (scalar_t__) ;
 scalar_t__* credit_table ;

__be32 rvt_compute_aeth(struct rvt_qp *qp)
{
 u32 aeth = qp->r_msn & IB_MSN_MASK;

 if (qp->ibqp.srq) {




  aeth |= IB_AETH_CREDIT_INVAL << IB_AETH_CREDIT_SHIFT;
 } else {
  u32 min, max, x;
  u32 credits;
  u32 head;
  u32 tail;

  credits = READ_ONCE(qp->r_rq.kwq->count);
  if (credits == 0) {

   if (qp->ip) {
    head = RDMA_READ_UAPI_ATOMIC(qp->r_rq.wq->head);
    tail = RDMA_READ_UAPI_ATOMIC(qp->r_rq.wq->tail);
   } else {
    head = READ_ONCE(qp->r_rq.kwq->head);
    tail = READ_ONCE(qp->r_rq.kwq->tail);
   }
   if (head >= qp->r_rq.size)
    head = 0;
   if (tail >= qp->r_rq.size)
    tail = 0;






   credits = head - tail;
   if ((int)credits < 0)
    credits += qp->r_rq.size;
  }




  min = 0;
  max = 31;
  for (;;) {
   x = (min + max) / 2;
   if (credit_table[x] == credits)
    break;
   if (credit_table[x] > credits) {
    max = x;
   } else {
    if (min == x)
     break;
    min = x;
   }
  }
  aeth |= x << IB_AETH_CREDIT_SHIFT;
 }
 return cpu_to_be32(aeth);
}
