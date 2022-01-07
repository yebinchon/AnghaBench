
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int msg_conn_id; scalar_t__ version_supported; } ;
struct TYPE_7__ {TYPE_2__ version_response; } ;
struct vmbus_channel_msginfo {TYPE_3__ response; int msglistentry; int waitevent; scalar_t__ msg; } ;
struct TYPE_5__ {int msgtype; } ;
struct vmbus_channel_initiate_contact {scalar_t__ target_vcpu; void* monitor_page2; void* monitor_page1; void* interrupt_page; int msg_sint; scalar_t__ vmbus_version_requested; TYPE_1__ header; } ;
struct TYPE_8__ {unsigned int connect_cpu; int msg_conn_id; int conn_state; int channelmsg_lock; int chn_msg_list; int * monitor_pages; int int_page; } ;


 int CHANNELMSG_INITIATE_CONTACT ;
 int CONNECTED ;
 int ECONNREFUSED ;
 scalar_t__ VERSION_WIN10_V5 ;
 scalar_t__ VERSION_WIN8_1 ;
 int VMBUS_MESSAGE_CONNECTION_ID ;
 int VMBUS_MESSAGE_CONNECTION_ID_4 ;
 int VMBUS_MESSAGE_SINT ;
 unsigned int get_cpu () ;
 scalar_t__ hv_cpu_number_to_vp_number (unsigned int) ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int memset (struct vmbus_channel_initiate_contact*,int ,int) ;
 int put_cpu () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_vmbus_negotiate_version (struct vmbus_channel_initiate_contact*,int) ;
 void* virt_to_phys (int ) ;
 TYPE_4__ vmbus_connection ;
 int vmbus_post_msg (struct vmbus_channel_initiate_contact*,int,int) ;
 int wait_for_completion (int *) ;

int vmbus_negotiate_version(struct vmbus_channel_msginfo *msginfo, u32 version)
{
 int ret = 0;
 unsigned int cur_cpu;
 struct vmbus_channel_initiate_contact *msg;
 unsigned long flags;

 init_completion(&msginfo->waitevent);

 msg = (struct vmbus_channel_initiate_contact *)msginfo->msg;

 memset(msg, 0, sizeof(*msg));
 msg->header.msgtype = CHANNELMSG_INITIATE_CONTACT;
 msg->vmbus_version_requested = version;
 if (version >= VERSION_WIN10_V5) {
  msg->msg_sint = VMBUS_MESSAGE_SINT;
  vmbus_connection.msg_conn_id = VMBUS_MESSAGE_CONNECTION_ID_4;
 } else {
  msg->interrupt_page = virt_to_phys(vmbus_connection.int_page);
  vmbus_connection.msg_conn_id = VMBUS_MESSAGE_CONNECTION_ID;
 }

 msg->monitor_page1 = virt_to_phys(vmbus_connection.monitor_pages[0]);
 msg->monitor_page2 = virt_to_phys(vmbus_connection.monitor_pages[1]);
 if (version >= VERSION_WIN8_1) {
  cur_cpu = get_cpu();
  msg->target_vcpu = hv_cpu_number_to_vp_number(cur_cpu);
  vmbus_connection.connect_cpu = cur_cpu;
  put_cpu();
 } else {
  msg->target_vcpu = 0;
  vmbus_connection.connect_cpu = 0;
 }





 spin_lock_irqsave(&vmbus_connection.channelmsg_lock, flags);
 list_add_tail(&msginfo->msglistentry,
        &vmbus_connection.chn_msg_list);

 spin_unlock_irqrestore(&vmbus_connection.channelmsg_lock, flags);

 ret = vmbus_post_msg(msg,
        sizeof(struct vmbus_channel_initiate_contact),
        1);

 trace_vmbus_negotiate_version(msg, ret);

 if (ret != 0) {
  spin_lock_irqsave(&vmbus_connection.channelmsg_lock, flags);
  list_del(&msginfo->msglistentry);
  spin_unlock_irqrestore(&vmbus_connection.channelmsg_lock,
     flags);
  return ret;
 }


 wait_for_completion(&msginfo->waitevent);

 spin_lock_irqsave(&vmbus_connection.channelmsg_lock, flags);
 list_del(&msginfo->msglistentry);
 spin_unlock_irqrestore(&vmbus_connection.channelmsg_lock, flags);


 if (msginfo->response.version_response.version_supported) {
  vmbus_connection.conn_state = CONNECTED;

  if (version >= VERSION_WIN10_V5)
   vmbus_connection.msg_conn_id =
    msginfo->response.version_response.msg_conn_id;
 } else {
  return -ECONNREFUSED;
 }

 return ret;
}
