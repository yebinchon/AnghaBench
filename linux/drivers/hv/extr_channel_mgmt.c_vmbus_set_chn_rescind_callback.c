
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {void (* chn_rescind_callback ) (struct vmbus_channel*) ;} ;



void vmbus_set_chn_rescind_callback(struct vmbus_channel *channel,
  void (*chn_rescind_cb)(struct vmbus_channel *))
{
 channel->chn_rescind_callback = chn_rescind_cb;
}
