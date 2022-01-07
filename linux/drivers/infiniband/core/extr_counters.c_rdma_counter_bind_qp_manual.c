
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_counter {scalar_t__ device; scalar_t__ port; } ;
struct ib_qp {scalar_t__ device; scalar_t__ port; } ;


 int EINVAL ;
 int __rdma_counter_bind_qp (struct rdma_counter*,struct ib_qp*) ;

__attribute__((used)) static int rdma_counter_bind_qp_manual(struct rdma_counter *counter,
           struct ib_qp *qp)
{
 if ((counter->device != qp->device) || (counter->port != qp->port))
  return -EINVAL;

 return __rdma_counter_bind_qp(counter, qp);
}
