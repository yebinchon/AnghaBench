
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel {int percpu_list; } ;
struct hv_per_cpu_context {int chan_list; } ;
struct TYPE_2__ {int cpu_context; } ;


 TYPE_1__ hv_context ;
 int list_add_tail_rcu (int *,int *) ;
 struct hv_per_cpu_context* this_cpu_ptr (int ) ;

__attribute__((used)) static void percpu_channel_enq(void *arg)
{
 struct vmbus_channel *channel = arg;
 struct hv_per_cpu_context *hv_cpu
  = this_cpu_ptr(hv_context.cpu_context);

 list_add_tail_rcu(&channel->percpu_list, &hv_cpu->chan_list);
}
