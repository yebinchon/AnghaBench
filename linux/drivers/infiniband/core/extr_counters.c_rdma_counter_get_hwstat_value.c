
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
typedef size_t u32 ;
struct rdma_port_counter {TYPE_2__* hstats; } ;
struct ib_device {TYPE_1__* port_data; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_3__ {struct rdma_port_counter port_counter; } ;


 int get_running_counters_hwstat_sum (struct ib_device*,size_t,size_t) ;

u64 rdma_counter_get_hwstat_value(struct ib_device *dev, u8 port, u32 index)
{
 struct rdma_port_counter *port_counter;
 u64 sum;

 port_counter = &dev->port_data[port].port_counter;
 if (!port_counter->hstats)
  return 0;

 sum = get_running_counters_hwstat_sum(dev, port, index);
 sum += port_counter->hstats->value[index];

 return sum;
}
