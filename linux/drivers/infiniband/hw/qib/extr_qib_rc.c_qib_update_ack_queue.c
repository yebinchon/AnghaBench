
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {unsigned int s_tail_ack_queue; int s_ack_state; } ;


 int ACKNOWLEDGE ;
 int OP (int ) ;
 unsigned int QIB_MAX_RDMA_ATOMIC ;

__attribute__((used)) static inline void qib_update_ack_queue(struct rvt_qp *qp, unsigned n)
{
 unsigned next;

 next = n + 1;
 if (next > QIB_MAX_RDMA_ATOMIC)
  next = 0;
 qp->s_tail_ack_queue = next;
 qp->s_ack_state = OP(ACKNOWLEDGE);
}
