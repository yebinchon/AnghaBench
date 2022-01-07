
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int msgtype; } ;
struct vmbus_channel_close_channel {int child_relid; TYPE_2__ header; } ;
struct TYPE_6__ {int child_relid; } ;
struct TYPE_4__ {struct vmbus_channel_close_channel msg; } ;
struct vmbus_channel {scalar_t__ state; scalar_t__ ringbuffer_gpadlhandle; TYPE_3__ offermsg; TYPE_1__ close_msg; } ;


 int CHANNELMSG_CLOSECHANNEL ;
 scalar_t__ CHANNEL_OPENED_STATE ;
 scalar_t__ CHANNEL_OPEN_STATE ;
 int EINVAL ;
 int pr_err (char*,int) ;
 int trace_vmbus_close_internal (struct vmbus_channel_close_channel*,int) ;
 int vmbus_post_msg (struct vmbus_channel_close_channel*,int,int) ;
 int vmbus_reset_channel_cb (struct vmbus_channel*) ;
 int vmbus_teardown_gpadl (struct vmbus_channel*,scalar_t__) ;

__attribute__((used)) static int vmbus_close_internal(struct vmbus_channel *channel)
{
 struct vmbus_channel_close_channel *msg;
 int ret;

 vmbus_reset_channel_cb(channel);
 if (channel->state != CHANNEL_OPENED_STATE)
  return -EINVAL;

 channel->state = CHANNEL_OPEN_STATE;



 msg = &channel->close_msg.msg;

 msg->header.msgtype = CHANNELMSG_CLOSECHANNEL;
 msg->child_relid = channel->offermsg.child_relid;

 ret = vmbus_post_msg(msg, sizeof(struct vmbus_channel_close_channel),
        1);

 trace_vmbus_close_internal(msg, ret);

 if (ret) {
  pr_err("Close failed: close post msg return is %d\n", ret);




 }


 else if (channel->ringbuffer_gpadlhandle) {
  ret = vmbus_teardown_gpadl(channel,
        channel->ringbuffer_gpadlhandle);
  if (ret) {
   pr_err("Close failed: teardown gpadl return %d\n", ret);




  }

  channel->ringbuffer_gpadlhandle = 0;
 }

 return ret;
}
