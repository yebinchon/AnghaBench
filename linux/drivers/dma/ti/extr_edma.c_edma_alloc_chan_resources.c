
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct edma_chan {int* slot; int alloced; scalar_t__ hw_triggered; int ch_num; TYPE_2__* tc; struct edma_cc* ecc; } ;
struct edma_cc {TYPE_1__* info; TYPE_2__* tc_list; struct device* dev; } ;
struct dma_chan {int chan_id; } ;
struct device {int dummy; } ;
typedef enum dma_event_q { ____Placeholder_dma_event_q } dma_event_q ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {size_t default_queue; } ;


 int EDMA_CHAN_SLOT (int ) ;
 int EVENTQ_DEFAULT ;
 int dev_dbg (struct device*,char*,int ,int ,char*) ;
 int dev_err (struct device*,char*,int ) ;
 int edma_alloc_channel (struct edma_chan*,int) ;
 int edma_alloc_slot (struct edma_cc*,int ) ;
 int edma_free_channel (struct edma_chan*) ;
 int edma_set_chmap (struct edma_chan*,int) ;
 struct edma_chan* to_edma_chan (struct dma_chan*) ;

__attribute__((used)) static int edma_alloc_chan_resources(struct dma_chan *chan)
{
 struct edma_chan *echan = to_edma_chan(chan);
 struct edma_cc *ecc = echan->ecc;
 struct device *dev = ecc->dev;
 enum dma_event_q eventq_no = EVENTQ_DEFAULT;
 int ret;

 if (echan->tc) {
  eventq_no = echan->tc->id;
 } else if (ecc->tc_list) {

  echan->tc = &ecc->tc_list[ecc->info->default_queue];
  eventq_no = echan->tc->id;
 }

 ret = edma_alloc_channel(echan, eventq_no);
 if (ret)
  return ret;

 echan->slot[0] = edma_alloc_slot(ecc, echan->ch_num);
 if (echan->slot[0] < 0) {
  dev_err(dev, "Entry slot allocation failed for channel %u\n",
   EDMA_CHAN_SLOT(echan->ch_num));
  ret = echan->slot[0];
  goto err_slot;
 }


 edma_set_chmap(echan, echan->slot[0]);
 echan->alloced = 1;

 dev_dbg(dev, "Got eDMA channel %d for virt channel %d (%s trigger)\n",
  EDMA_CHAN_SLOT(echan->ch_num), chan->chan_id,
  echan->hw_triggered ? "HW" : "SW");

 return 0;

err_slot:
 edma_free_channel(echan);
 return ret;
}
