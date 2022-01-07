
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct etm_filters* addr_filters; } ;
struct perf_event {int cpu; TYPE_3__ hw; TYPE_2__* parent; } ;
struct etm_filters {int dummy; } ;
struct TYPE_4__ {int addr_filters; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_node (int) ;
 struct etm_filters* kzalloc_node (int,int ,int) ;
 int memcpy (struct etm_filters*,int ,int) ;

__attribute__((used)) static int etm_addr_filters_alloc(struct perf_event *event)
{
 struct etm_filters *filters;
 int node = event->cpu == -1 ? -1 : cpu_to_node(event->cpu);

 filters = kzalloc_node(sizeof(struct etm_filters), GFP_KERNEL, node);
 if (!filters)
  return -ENOMEM;

 if (event->parent)
  memcpy(filters, event->parent->hw.addr_filters,
         sizeof(*filters));

 event->hw.addr_filters = filters;

 return 0;
}
