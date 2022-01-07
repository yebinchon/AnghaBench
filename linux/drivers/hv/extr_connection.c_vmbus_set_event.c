
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int child_relid; } ;
struct vmbus_channel {int sig_event; int sig_events; int is_dedicated_interrupt; TYPE_1__ offermsg; } ;


 int HVCALL_SIGNAL_EVENT ;
 int hv_do_fast_hypercall8 (int ,int ) ;
 int vmbus_send_interrupt (int ) ;

void vmbus_set_event(struct vmbus_channel *channel)
{
 u32 child_relid = channel->offermsg.child_relid;

 if (!channel->is_dedicated_interrupt)
  vmbus_send_interrupt(child_relid);

 ++channel->sig_events;

 hv_do_fast_hypercall8(HVCALL_SIGNAL_EVENT, channel->sig_event);
}
