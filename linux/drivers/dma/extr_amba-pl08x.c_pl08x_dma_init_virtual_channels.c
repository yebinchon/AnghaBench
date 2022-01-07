
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pl08x_driver_data {TYPE_2__* adev; TYPE_1__* pd; } ;
struct TYPE_6__ {int desc_free; } ;
struct pl08x_dma_chan {int signal; char* bus_id; TYPE_3__ vc; int name; struct pl08x_dma_chan* cd; int periph_buses; int state; struct pl08x_driver_data* host; } ;
struct dma_device {int channels; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int mem_buses; struct pl08x_dma_chan* slave_channels; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PL08X_CHAN_IDLE ;
 int dev_dbg (int *,char*,int ) ;
 int dev_info (int *,char*,int,char*) ;
 int kasprintf (int ,char*,int) ;
 int kfree (struct pl08x_dma_chan*) ;
 void* kzalloc (int,int ) ;
 int pl08x_desc_free ;
 int pl08x_dma_slave_init (struct pl08x_dma_chan*) ;
 int vchan_init (TYPE_3__*,struct dma_device*) ;

__attribute__((used)) static int pl08x_dma_init_virtual_channels(struct pl08x_driver_data *pl08x,
  struct dma_device *dmadev, unsigned int channels, bool slave)
{
 struct pl08x_dma_chan *chan;
 int i;

 INIT_LIST_HEAD(&dmadev->channels);






 for (i = 0; i < channels; i++) {
  chan = kzalloc(sizeof(*chan), GFP_KERNEL);
  if (!chan)
   return -ENOMEM;

  chan->host = pl08x;
  chan->state = PL08X_CHAN_IDLE;
  chan->signal = -1;

  if (slave) {
   chan->cd = &pl08x->pd->slave_channels[i];





   chan->signal = i;
   pl08x_dma_slave_init(chan);
  } else {
   chan->cd = kzalloc(sizeof(*chan->cd), GFP_KERNEL);
   if (!chan->cd) {
    kfree(chan);
    return -ENOMEM;
   }
   chan->cd->bus_id = "memcpy";
   chan->cd->periph_buses = pl08x->pd->mem_buses;
   chan->name = kasprintf(GFP_KERNEL, "memcpy%d", i);
   if (!chan->name) {
    kfree(chan->cd);
    kfree(chan);
    return -ENOMEM;
   }
  }
  dev_dbg(&pl08x->adev->dev,
    "initialize virtual channel \"%s\"\n",
    chan->name);

  chan->vc.desc_free = pl08x_desc_free;
  vchan_init(&chan->vc, dmadev);
 }
 dev_info(&pl08x->adev->dev, "initialized %d virtual %s channels\n",
   i, slave ? "slave" : "memcpy");
 return i;
}
