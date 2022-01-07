
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmp_pdma_phy {int idx; int base; } ;
struct TYPE_4__ {int channels; } ;
struct mmp_pdma_device {TYPE_2__ device; int dev; int base; struct mmp_pdma_phy* phy; } ;
struct TYPE_3__ {int device_node; TYPE_2__* device; } ;
struct mmp_pdma_chan {TYPE_1__ chan; int chain_running; int chain_pending; int tasklet; int dev; int desc_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_SHARED ;
 int dev_err (int ,char*) ;
 struct mmp_pdma_chan* devm_kzalloc (int ,int,int ) ;
 int devm_request_irq (int ,int,int ,int ,char*,struct mmp_pdma_phy*) ;
 int dma_do_tasklet ;
 int list_add_tail (int *,int *) ;
 int mmp_pdma_chan_handler ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int mmp_pdma_chan_init(struct mmp_pdma_device *pdev, int idx, int irq)
{
 struct mmp_pdma_phy *phy = &pdev->phy[idx];
 struct mmp_pdma_chan *chan;
 int ret;

 chan = devm_kzalloc(pdev->dev, sizeof(*chan), GFP_KERNEL);
 if (chan == ((void*)0))
  return -ENOMEM;

 phy->idx = idx;
 phy->base = pdev->base;

 if (irq) {
  ret = devm_request_irq(pdev->dev, irq, mmp_pdma_chan_handler,
           IRQF_SHARED, "pdma", phy);
  if (ret) {
   dev_err(pdev->dev, "channel request irq fail!\n");
   return ret;
  }
 }

 spin_lock_init(&chan->desc_lock);
 chan->dev = pdev->dev;
 chan->chan.device = &pdev->device;
 tasklet_init(&chan->tasklet, dma_do_tasklet, (unsigned long)chan);
 INIT_LIST_HEAD(&chan->chain_pending);
 INIT_LIST_HEAD(&chan->chain_running);


 list_add_tail(&chan->chan.device_node, &pdev->device.channels);

 return 0;
}
