
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int * onchannel_callback; } ;



__attribute__((used)) static void reset_channel_cb(void *arg)
{
 struct vmbus_channel *channel = arg;

 channel->onchannel_callback = ((void*)0);
}
