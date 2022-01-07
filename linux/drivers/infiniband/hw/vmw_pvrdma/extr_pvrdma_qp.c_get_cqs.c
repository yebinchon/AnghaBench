
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recv_cq; int send_cq; } ;
struct pvrdma_qp {TYPE_1__ ibqp; } ;
struct pvrdma_cq {int dummy; } ;


 struct pvrdma_cq* to_vcq (int ) ;

__attribute__((used)) static inline void get_cqs(struct pvrdma_qp *qp, struct pvrdma_cq **send_cq,
      struct pvrdma_cq **recv_cq)
{
 *send_cq = to_vcq(qp->ibqp.send_cq);
 *recv_cq = to_vcq(qp->ibqp.recv_cq);
}
