
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union hv_synic_event_flags {int flags; } ;
struct hv_per_cpu_context {int msg_dpc; void* synic_message_page; void* synic_event_page; } ;
struct TYPE_3__ {scalar_t__ message_type; } ;
struct hv_message {TYPE_1__ header; } ;
struct TYPE_4__ {int cpu_context; } ;


 scalar_t__ HVMSG_NONE ;
 scalar_t__ HVMSG_TIMER_EXPIRED ;
 int HYPERVISOR_CALLBACK_VECTOR ;
 scalar_t__ VERSION_WIN7 ;
 scalar_t__ VERSION_WS2008 ;
 int VMBUS_MESSAGE_SINT ;
 int add_interrupt_randomness (int ,int ) ;
 TYPE_2__ hv_context ;
 int hv_stimer0_isr () ;
 scalar_t__ sync_test_and_clear_bit (int ,int ) ;
 int tasklet_schedule (int *) ;
 struct hv_per_cpu_context* this_cpu_ptr (int ) ;
 scalar_t__ unlikely (int ) ;
 int vmbus_chan_sched (struct hv_per_cpu_context*) ;
 scalar_t__ vmbus_proto_version ;
 int vmbus_signal_eom (struct hv_message*,scalar_t__) ;

__attribute__((used)) static void vmbus_isr(void)
{
 struct hv_per_cpu_context *hv_cpu
  = this_cpu_ptr(hv_context.cpu_context);
 void *page_addr = hv_cpu->synic_event_page;
 struct hv_message *msg;
 union hv_synic_event_flags *event;
 bool handled = 0;

 if (unlikely(page_addr == ((void*)0)))
  return;

 event = (union hv_synic_event_flags *)page_addr +
      VMBUS_MESSAGE_SINT;






 if ((vmbus_proto_version == VERSION_WS2008) ||
  (vmbus_proto_version == VERSION_WIN7)) {


  if (sync_test_and_clear_bit(0, event->flags))
   handled = 1;
 } else {






  handled = 1;
 }

 if (handled)
  vmbus_chan_sched(hv_cpu);

 page_addr = hv_cpu->synic_message_page;
 msg = (struct hv_message *)page_addr + VMBUS_MESSAGE_SINT;


 if (msg->header.message_type != HVMSG_NONE) {
  if (msg->header.message_type == HVMSG_TIMER_EXPIRED) {
   hv_stimer0_isr();
   vmbus_signal_eom(msg, HVMSG_TIMER_EXPIRED);
  } else
   tasklet_schedule(&hv_cpu->msg_dpc);
 }

 add_interrupt_randomness(HYPERVISOR_CALLBACK_VECTOR, 0);
}
