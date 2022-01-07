
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ mode; } ;
struct rdma_port_counter {int lock; TYPE_3__ mode; int num_counters; } ;
struct rdma_counter {size_t port; struct rdma_counter* stats; int res; TYPE_2__* device; } ;
struct TYPE_5__ {TYPE_1__* port_data; } ;
struct TYPE_4__ {struct rdma_port_counter port_counter; } ;


 scalar_t__ RDMA_COUNTER_MODE_MANUAL ;
 int RDMA_COUNTER_MODE_NONE ;
 int __counter_set_mode (TYPE_3__*,int ,int ) ;
 int kfree (struct rdma_counter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_restrack_del (int *) ;

__attribute__((used)) static void rdma_counter_free(struct rdma_counter *counter)
{
 struct rdma_port_counter *port_counter;

 port_counter = &counter->device->port_data[counter->port].port_counter;
 mutex_lock(&port_counter->lock);
 port_counter->num_counters--;
 if (!port_counter->num_counters &&
     (port_counter->mode.mode == RDMA_COUNTER_MODE_MANUAL))
  __counter_set_mode(&port_counter->mode, RDMA_COUNTER_MODE_NONE,
       0);

 mutex_unlock(&port_counter->lock);

 rdma_restrack_del(&counter->res);
 kfree(counter->stats);
 kfree(counter);
}
