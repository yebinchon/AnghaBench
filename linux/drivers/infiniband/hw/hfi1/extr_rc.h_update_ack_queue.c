
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct rvt_qp {unsigned int s_tail_ack_queue; unsigned int s_acked_ack_queue; int s_ack_state; TYPE_1__ ibqp; } ;


 int ACKNOWLEDGE ;
 int OP (int ) ;
 int ib_to_rvt (int ) ;
 unsigned int rvt_size_atomic (int ) ;

__attribute__((used)) static inline void update_ack_queue(struct rvt_qp *qp, unsigned int n)
{
 unsigned int next;

 next = n + 1;
 if (next > rvt_size_atomic(ib_to_rvt(qp->ibqp.device)))
  next = 0;
 qp->s_tail_ack_queue = next;
 qp->s_acked_ack_queue = next;
 qp->s_ack_state = OP(ACKNOWLEDGE);
}
