
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel_msginfo {scalar_t__ msg; } ;
struct vmbus_channel_message_header {int msgtype; } ;


 int CHANNELMSG_REQUESTOFFERS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct vmbus_channel_msginfo*) ;
 struct vmbus_channel_msginfo* kmalloc (int,int ) ;
 int pr_err (char*,int) ;
 int trace_vmbus_request_offers (int) ;
 int vmbus_post_msg (struct vmbus_channel_message_header*,int,int) ;

int vmbus_request_offers(void)
{
 struct vmbus_channel_message_header *msg;
 struct vmbus_channel_msginfo *msginfo;
 int ret;

 msginfo = kmalloc(sizeof(*msginfo) +
     sizeof(struct vmbus_channel_message_header),
     GFP_KERNEL);
 if (!msginfo)
  return -ENOMEM;

 msg = (struct vmbus_channel_message_header *)msginfo->msg;

 msg->msgtype = CHANNELMSG_REQUESTOFFERS;

 ret = vmbus_post_msg(msg, sizeof(struct vmbus_channel_message_header),
        1);

 trace_vmbus_request_offers(ret);

 if (ret != 0) {
  pr_err("Unable to request offers - %d\n", ret);

  goto cleanup;
 }

cleanup:
 kfree(msginfo);

 return ret;
}
