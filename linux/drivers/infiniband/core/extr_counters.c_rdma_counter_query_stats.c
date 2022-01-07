
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_counter {int lock; struct ib_device* device; } ;
struct TYPE_2__ {int (* counter_update_stats ) (struct rdma_counter*) ;} ;
struct ib_device {TYPE_1__ ops; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct rdma_counter*) ;

int rdma_counter_query_stats(struct rdma_counter *counter)
{
 struct ib_device *dev = counter->device;
 int ret;

 if (!dev->ops.counter_update_stats)
  return -EINVAL;

 mutex_lock(&counter->lock);
 ret = dev->ops.counter_update_stats(counter);
 mutex_unlock(&counter->lock);

 return ret;
}
