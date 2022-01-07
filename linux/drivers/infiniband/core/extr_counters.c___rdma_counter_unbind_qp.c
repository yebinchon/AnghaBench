
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_counter {int lock; } ;
struct ib_qp {TYPE_2__* device; struct rdma_counter* counter; } ;
struct TYPE_3__ {int (* counter_unbind_qp ) (struct ib_qp*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ib_qp*) ;

__attribute__((used)) static int __rdma_counter_unbind_qp(struct ib_qp *qp)
{
 struct rdma_counter *counter = qp->counter;
 int ret;

 if (!qp->device->ops.counter_unbind_qp)
  return -EOPNOTSUPP;

 mutex_lock(&counter->lock);
 ret = qp->device->ops.counter_unbind_qp(qp);
 mutex_unlock(&counter->lock);

 return ret;
}
