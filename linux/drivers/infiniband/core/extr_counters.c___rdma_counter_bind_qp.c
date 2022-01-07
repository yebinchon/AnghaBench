
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_counter {int lock; } ;
struct ib_qp {TYPE_2__* device; scalar_t__ counter; } ;
struct TYPE_3__ {int (* counter_bind_qp ) (struct rdma_counter*,struct ib_qp*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct rdma_counter*,struct ib_qp*) ;

__attribute__((used)) static int __rdma_counter_bind_qp(struct rdma_counter *counter,
      struct ib_qp *qp)
{
 int ret;

 if (qp->counter)
  return -EINVAL;

 if (!qp->device->ops.counter_bind_qp)
  return -EOPNOTSUPP;

 mutex_lock(&counter->lock);
 ret = qp->device->ops.counter_bind_qp(counter, qp);
 mutex_unlock(&counter->lock);

 return ret;
}
