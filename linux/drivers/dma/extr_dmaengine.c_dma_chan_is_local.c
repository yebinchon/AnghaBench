
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int dev; } ;


 int NUMA_NO_NODE ;
 int cpumask_of_node (int) ;
 scalar_t__ cpumask_test_cpu (int,int ) ;
 int dev_to_node (int ) ;

__attribute__((used)) static bool dma_chan_is_local(struct dma_chan *chan, int cpu)
{
 int node = dev_to_node(chan->device->dev);
 return node == NUMA_NO_NODE ||
  cpumask_test_cpu(cpu, cpumask_of_node(node));
}
