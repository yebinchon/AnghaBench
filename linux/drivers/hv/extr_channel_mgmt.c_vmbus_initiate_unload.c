
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel_message_header {int msgtype; } ;
struct TYPE_2__ {int unload_event; } ;


 int CHANNELMSG_UNLOAD ;
 scalar_t__ VERSION_WIN8_1 ;
 int init_completion (int *) ;
 int memset (struct vmbus_channel_message_header*,int ,int) ;
 TYPE_1__ vmbus_connection ;
 int vmbus_post_msg (struct vmbus_channel_message_header*,int,int) ;
 scalar_t__ vmbus_proto_version ;
 int vmbus_wait_for_unload () ;
 int wait_for_completion (int *) ;

void vmbus_initiate_unload(bool crash)
{
 struct vmbus_channel_message_header hdr;


 if (vmbus_proto_version < VERSION_WIN8_1)
  return;

 init_completion(&vmbus_connection.unload_event);
 memset(&hdr, 0, sizeof(struct vmbus_channel_message_header));
 hdr.msgtype = CHANNELMSG_UNLOAD;
 vmbus_post_msg(&hdr, sizeof(struct vmbus_channel_message_header),
         !crash);





 if (!crash)
  wait_for_completion(&vmbus_connection.unload_event);
 else
  vmbus_wait_for_unload();
}
