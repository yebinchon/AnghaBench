
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_waitlist {int thresh; int count; struct host1x_channel* data; } ;
struct host1x_channel {int dev; int cdma; } ;


 int dev_name (int ) ;
 int host1x_cdma_update (int *) ;
 int trace_host1x_channel_submit_complete (int ,int ,int ) ;

__attribute__((used)) static void action_submit_complete(struct host1x_waitlist *waiter)
{
 struct host1x_channel *channel = waiter->data;

 host1x_cdma_update(&channel->cdma);


 trace_host1x_channel_submit_complete(dev_name(channel->dev),
          waiter->count, waiter->thresh);

}
