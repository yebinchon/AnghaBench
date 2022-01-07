
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {scalar_t__ mode; int mask; } ;
struct rdma_port_counter {TYPE_2__ mode; } ;
struct rdma_counter {int kref; } ;
struct ib_qp {struct ib_device* device; } ;
struct ib_device {TYPE_1__* port_data; } ;
struct TYPE_3__ {struct rdma_port_counter port_counter; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ RDMA_COUNTER_MODE_AUTO ;
 int __rdma_counter_bind_qp (struct rdma_counter*,struct ib_qp*) ;
 int auto_mode_init_counter (struct rdma_counter*,struct ib_qp*,int ) ;
 int counter_release ;
 int kref_put (int *,int ) ;
 struct rdma_counter* rdma_counter_alloc (struct ib_device*,size_t,scalar_t__) ;
 int rdma_counter_free (struct rdma_counter*) ;
 int rdma_counter_res_add (struct rdma_counter*,struct ib_qp*) ;
 struct rdma_counter* rdma_get_counter_auto_mode (struct ib_qp*,size_t) ;
 int rdma_is_port_valid (struct ib_device*,size_t) ;

int rdma_counter_bind_qp_auto(struct ib_qp *qp, u8 port)
{
 struct rdma_port_counter *port_counter;
 struct ib_device *dev = qp->device;
 struct rdma_counter *counter;
 int ret;

 if (!rdma_is_port_valid(dev, port))
  return -EINVAL;

 port_counter = &dev->port_data[port].port_counter;
 if (port_counter->mode.mode != RDMA_COUNTER_MODE_AUTO)
  return 0;

 counter = rdma_get_counter_auto_mode(qp, port);
 if (counter) {
  ret = __rdma_counter_bind_qp(counter, qp);
  if (ret) {
   kref_put(&counter->kref, counter_release);
   return ret;
  }
 } else {
  counter = rdma_counter_alloc(dev, port, RDMA_COUNTER_MODE_AUTO);
  if (!counter)
   return -ENOMEM;

  auto_mode_init_counter(counter, qp, port_counter->mode.mask);

  ret = __rdma_counter_bind_qp(counter, qp);
  if (ret) {
   rdma_counter_free(counter);
   return ret;
  }

  rdma_counter_res_add(counter, qp);
 }

 return 0;
}
