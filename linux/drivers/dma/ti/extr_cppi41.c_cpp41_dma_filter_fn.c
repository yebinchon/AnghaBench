
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct dma_chan {TYPE_2__* device; } ;
struct cppi41_dd {struct chan_queues* queues_rx; struct chan_queues* queues_tx; } ;
struct cppi41_channel {scalar_t__ port_num; int q_comp_num; int q_num; scalar_t__ is_tx; struct cppi41_dd* cdd; } ;
struct chan_queues {int complete; int submit; } ;
struct TYPE_6__ {int driver; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int * driver; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int BUILD_BUG_ON (int) ;
 size_t INFO_IS_TX ;
 size_t INFO_PORT ;
 scalar_t__ WARN_ON (int) ;
 int am335x_usb_queues_rx ;
 int am335x_usb_queues_tx ;
 TYPE_3__ cpp41_dma_driver ;
 struct cppi41_channel* to_cpp41_chan (struct dma_chan*) ;

__attribute__((used)) static bool cpp41_dma_filter_fn(struct dma_chan *chan, void *param)
{
 struct cppi41_channel *cchan;
 struct cppi41_dd *cdd;
 const struct chan_queues *queues;
 u32 *num = param;

 if (chan->device->dev->driver != &cpp41_dma_driver.driver)
  return 0;

 cchan = to_cpp41_chan(chan);

 if (cchan->port_num != num[INFO_PORT])
  return 0;

 if (cchan->is_tx && !num[INFO_IS_TX])
  return 0;
 cdd = cchan->cdd;
 if (cchan->is_tx)
  queues = cdd->queues_tx;
 else
  queues = cdd->queues_rx;

 BUILD_BUG_ON(ARRAY_SIZE(am335x_usb_queues_rx) !=
       ARRAY_SIZE(am335x_usb_queues_tx));
 if (WARN_ON(cchan->port_num >= ARRAY_SIZE(am335x_usb_queues_rx)))
  return 0;

 cchan->q_num = queues[cchan->port_num].submit;
 cchan->q_comp_num = queues[cchan->port_num].complete;
 return 1;
}
