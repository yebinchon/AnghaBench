
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vmbus_channel_msginfo {int msglistentry; int waitevent; scalar_t__ msg; struct vmbus_channel* waiting_channel; } ;
struct TYPE_4__ {int msgtype; } ;
struct vmbus_channel_gpadl_teardown {int gpadl; int child_relid; TYPE_1__ header; } ;
struct TYPE_5__ {int child_relid; } ;
struct vmbus_channel {scalar_t__ rescind; TYPE_2__ offermsg; } ;
struct TYPE_6__ {int channelmsg_lock; int chn_msg_list; } ;


 int CHANNELMSG_GPADL_TEARDOWN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int init_completion (int *) ;
 int kfree (struct vmbus_channel_msginfo*) ;
 struct vmbus_channel_msginfo* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_vmbus_teardown_gpadl (struct vmbus_channel_gpadl_teardown*,int) ;
 TYPE_3__ vmbus_connection ;
 int vmbus_post_msg (struct vmbus_channel_gpadl_teardown*,int,int) ;
 int wait_for_completion (int *) ;

int vmbus_teardown_gpadl(struct vmbus_channel *channel, u32 gpadl_handle)
{
 struct vmbus_channel_gpadl_teardown *msg;
 struct vmbus_channel_msginfo *info;
 unsigned long flags;
 int ret;

 info = kmalloc(sizeof(*info) +
         sizeof(struct vmbus_channel_gpadl_teardown), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 init_completion(&info->waitevent);
 info->waiting_channel = channel;

 msg = (struct vmbus_channel_gpadl_teardown *)info->msg;

 msg->header.msgtype = CHANNELMSG_GPADL_TEARDOWN;
 msg->child_relid = channel->offermsg.child_relid;
 msg->gpadl = gpadl_handle;

 spin_lock_irqsave(&vmbus_connection.channelmsg_lock, flags);
 list_add_tail(&info->msglistentry,
        &vmbus_connection.chn_msg_list);
 spin_unlock_irqrestore(&vmbus_connection.channelmsg_lock, flags);

 if (channel->rescind)
  goto post_msg_err;

 ret = vmbus_post_msg(msg, sizeof(struct vmbus_channel_gpadl_teardown),
        1);

 trace_vmbus_teardown_gpadl(msg, ret);

 if (ret)
  goto post_msg_err;

 wait_for_completion(&info->waitevent);

post_msg_err:





 if (channel->rescind)
  ret = 0;

 spin_lock_irqsave(&vmbus_connection.channelmsg_lock, flags);
 list_del(&info->msglistentry);
 spin_unlock_irqrestore(&vmbus_connection.channelmsg_lock, flags);

 kfree(info);
 return ret;
}
