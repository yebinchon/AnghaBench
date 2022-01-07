
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edma_chan {int* slot; int alloced; int hw_triggered; int ch_num; int * tc; TYPE_1__* ecc; int vchan; } ;
struct dma_chan {int chan_id; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int dummy_slot; struct device* dev; } ;


 int EDMA_CHAN_SLOT (int ) ;
 int EDMA_MAX_SLOTS ;
 int dev_dbg (struct device*,char*,int ,int ) ;
 int edma_free_channel (struct edma_chan*) ;
 int edma_free_slot (TYPE_1__*,int) ;
 int edma_set_chmap (struct edma_chan*,int ) ;
 int edma_stop (struct edma_chan*) ;
 struct edma_chan* to_edma_chan (struct dma_chan*) ;
 int vchan_free_chan_resources (int *) ;

__attribute__((used)) static void edma_free_chan_resources(struct dma_chan *chan)
{
 struct edma_chan *echan = to_edma_chan(chan);
 struct device *dev = echan->ecc->dev;
 int i;


 edma_stop(echan);

 vchan_free_chan_resources(&echan->vchan);


 for (i = 0; i < EDMA_MAX_SLOTS; i++) {
  if (echan->slot[i] >= 0) {
   edma_free_slot(echan->ecc, echan->slot[i]);
   echan->slot[i] = -1;
  }
 }


 edma_set_chmap(echan, echan->ecc->dummy_slot);


 if (echan->alloced) {
  edma_free_channel(echan);
  echan->alloced = 0;
 }

 echan->tc = ((void*)0);
 echan->hw_triggered = 0;

 dev_dbg(dev, "Free eDMA channel %d for virt channel %d\n",
  EDMA_CHAN_SLOT(echan->ch_num), chan->chan_id);
}
