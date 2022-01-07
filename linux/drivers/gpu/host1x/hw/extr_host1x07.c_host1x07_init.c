
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x {int * debug_op; int * intr_op; int * syncpt_op; int * cdma_pb_op; int * cdma_op; int * channel_op; } ;


 int host1x_cdma_ops ;
 int host1x_channel_ops ;
 int host1x_debug_ops ;
 int host1x_intr_ops ;
 int host1x_pushbuffer_ops ;
 int host1x_syncpt_ops ;

int host1x07_init(struct host1x *host)
{
 host->channel_op = &host1x_channel_ops;
 host->cdma_op = &host1x_cdma_ops;
 host->cdma_pb_op = &host1x_pushbuffer_ops;
 host->syncpt_op = &host1x_syncpt_ops;
 host->intr_op = &host1x_intr_ops;
 host->debug_op = &host1x_debug_ops;

 return 0;
}
