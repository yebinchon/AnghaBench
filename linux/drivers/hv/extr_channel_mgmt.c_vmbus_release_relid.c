
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int msgtype; } ;
struct vmbus_channel_relid_released {TYPE_1__ header; int child_relid; } ;


 int CHANNELMSG_RELID_RELEASED ;
 int memset (struct vmbus_channel_relid_released*,int ,int) ;
 int trace_vmbus_release_relid (struct vmbus_channel_relid_released*,int) ;
 int vmbus_post_msg (struct vmbus_channel_relid_released*,int,int) ;

__attribute__((used)) static void vmbus_release_relid(u32 relid)
{
 struct vmbus_channel_relid_released msg;
 int ret;

 memset(&msg, 0, sizeof(struct vmbus_channel_relid_released));
 msg.child_relid = relid;
 msg.header.msgtype = CHANNELMSG_RELID_RELEASED;
 ret = vmbus_post_msg(&msg, sizeof(struct vmbus_channel_relid_released),
        1);

 trace_vmbus_release_relid(&msg, ret);
}
