
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int child_relid; scalar_t__ monitor_allocated; } ;
struct vmbus_channel {size_t monitor_grp; int monitor_bit; TYPE_1__ offermsg; int low_latency; } ;
struct hv_monitor_page {TYPE_2__* trigger_group; } ;
struct TYPE_6__ {struct hv_monitor_page** monitor_pages; } ;
struct TYPE_5__ {int pending; } ;


 int sync_set_bit (int ,unsigned long*) ;
 int trace_vmbus_setevent (struct vmbus_channel*) ;
 TYPE_3__ vmbus_connection ;
 int vmbus_send_interrupt (int ) ;
 int vmbus_set_event (struct vmbus_channel*) ;

void vmbus_setevent(struct vmbus_channel *channel)
{
 struct hv_monitor_page *monitorpage;

 trace_vmbus_setevent(channel);





 if (channel->offermsg.monitor_allocated && !channel->low_latency) {
  vmbus_send_interrupt(channel->offermsg.child_relid);


  monitorpage = vmbus_connection.monitor_pages[1];

  sync_set_bit(channel->monitor_bit,
   (unsigned long *)&monitorpage->trigger_group
     [channel->monitor_grp].pending);

 } else {
  vmbus_set_event(channel);
 }
}
