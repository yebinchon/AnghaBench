
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_counter {int kref; } ;
struct ib_qp {struct rdma_counter* counter; } ;


 int EINVAL ;
 int __rdma_counter_unbind_qp (struct ib_qp*) ;
 int counter_release ;
 int kref_put (int *,int ) ;

int rdma_counter_unbind_qp(struct ib_qp *qp, bool force)
{
 struct rdma_counter *counter = qp->counter;
 int ret;

 if (!counter)
  return -EINVAL;

 ret = __rdma_counter_unbind_qp(qp);
 if (ret && !force)
  return ret;

 kref_put(&counter->kref, counter_release);
 return 0;
}
