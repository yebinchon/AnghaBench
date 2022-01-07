
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct rdma_port_counter {int lock; int num_counters; int mode; } ;
struct TYPE_8__ {int mode; } ;
struct TYPE_5__ {int type; } ;
struct rdma_counter {size_t port; struct rdma_counter* stats; int lock; int kref; TYPE_4__ mode; TYPE_1__ res; struct ib_device* device; } ;
struct TYPE_6__ {struct rdma_counter* (* counter_alloc_stats ) (struct rdma_counter*) ;int counter_dealloc; } ;
struct ib_device {TYPE_3__* port_data; TYPE_2__ ops; } ;
typedef enum rdma_nl_counter_mode { ____Placeholder_rdma_nl_counter_mode } rdma_nl_counter_mode ;
struct TYPE_7__ {struct rdma_port_counter port_counter; } ;


 int GFP_KERNEL ;
 int RDMA_COUNTER_MODE_MANUAL ;
 int RDMA_RESTRACK_COUNTER ;
 int __counter_set_mode (int *,int,int ) ;
 int kfree (struct rdma_counter*) ;
 int kref_init (int *) ;
 struct rdma_counter* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rdma_counter* stub1 (struct rdma_counter*) ;

__attribute__((used)) static struct rdma_counter *rdma_counter_alloc(struct ib_device *dev, u8 port,
            enum rdma_nl_counter_mode mode)
{
 struct rdma_port_counter *port_counter;
 struct rdma_counter *counter;
 int ret;

 if (!dev->ops.counter_dealloc || !dev->ops.counter_alloc_stats)
  return ((void*)0);

 counter = kzalloc(sizeof(*counter), GFP_KERNEL);
 if (!counter)
  return ((void*)0);

 counter->device = dev;
 counter->port = port;
 counter->res.type = RDMA_RESTRACK_COUNTER;
 counter->stats = dev->ops.counter_alloc_stats(counter);
 if (!counter->stats)
  goto err_stats;

 port_counter = &dev->port_data[port].port_counter;
 mutex_lock(&port_counter->lock);
 if (mode == RDMA_COUNTER_MODE_MANUAL) {
  ret = __counter_set_mode(&port_counter->mode,
      RDMA_COUNTER_MODE_MANUAL, 0);
  if (ret)
   goto err_mode;
 }

 port_counter->num_counters++;
 mutex_unlock(&port_counter->lock);

 counter->mode.mode = mode;
 kref_init(&counter->kref);
 mutex_init(&counter->lock);

 return counter;

err_mode:
 mutex_unlock(&port_counter->lock);
 kfree(counter->stats);
err_stats:
 kfree(counter);
 return ((void*)0);
}
