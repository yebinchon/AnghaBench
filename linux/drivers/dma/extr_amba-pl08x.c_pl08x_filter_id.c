
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pl08x_dma_chan {int name; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_6__ {int drv; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int * driver; } ;


 TYPE_3__ pl08x_amba_driver ;
 int strcmp (int ,char*) ;
 struct pl08x_dma_chan* to_pl08x_chan (struct dma_chan*) ;

bool pl08x_filter_id(struct dma_chan *chan, void *chan_id)
{
 struct pl08x_dma_chan *plchan;
 char *name = chan_id;


 if (chan->device->dev->driver != &pl08x_amba_driver.drv)
  return 0;

 plchan = to_pl08x_chan(chan);


 if (!strcmp(plchan->name, name))
  return 1;

 return 0;
}
