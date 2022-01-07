
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wait; int done; int active; int pending; int free; } ;
struct dma_chan {int device_node; TYPE_2__* device; } ;
struct rcar_dmac_chan {unsigned int index; int irq; TYPE_1__ desc; int lock; int mid_rid; scalar_t__ iomem; struct dma_chan chan; } ;
struct TYPE_4__ {int channels; } ;
struct rcar_dmac {int dev; TYPE_2__ engine; scalar_t__ iomem; } ;
struct platform_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ RCAR_DMAC_CHAN_OFFSET (unsigned int) ;
 int dev_err (int ,char*,int ,int) ;
 int dev_name (int ) ;
 char* devm_kasprintf (int ,int ,char*,int ,unsigned int) ;
 int devm_request_threaded_irq (int ,int ,int ,int ,int ,char*,struct rcar_dmac_chan*) ;
 int dma_cookie_init (struct dma_chan*) ;
 int list_add_tail (int *,int *) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int rcar_dmac_isr_channel ;
 int rcar_dmac_isr_channel_thread ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,unsigned int) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int rcar_dmac_chan_probe(struct rcar_dmac *dmac,
    struct rcar_dmac_chan *rchan,
    unsigned int index)
{
 struct platform_device *pdev = to_platform_device(dmac->dev);
 struct dma_chan *chan = &rchan->chan;
 char pdev_irqname[5];
 char *irqname;
 int ret;

 rchan->index = index;
 rchan->iomem = dmac->iomem + RCAR_DMAC_CHAN_OFFSET(index);
 rchan->mid_rid = -EINVAL;

 spin_lock_init(&rchan->lock);

 INIT_LIST_HEAD(&rchan->desc.free);
 INIT_LIST_HEAD(&rchan->desc.pending);
 INIT_LIST_HEAD(&rchan->desc.active);
 INIT_LIST_HEAD(&rchan->desc.done);
 INIT_LIST_HEAD(&rchan->desc.wait);


 sprintf(pdev_irqname, "ch%u", index);
 rchan->irq = platform_get_irq_byname(pdev, pdev_irqname);
 if (rchan->irq < 0)
  return -ENODEV;

 irqname = devm_kasprintf(dmac->dev, GFP_KERNEL, "%s:%u",
     dev_name(dmac->dev), index);
 if (!irqname)
  return -ENOMEM;





 chan->device = &dmac->engine;
 dma_cookie_init(chan);

 list_add_tail(&chan->device_node, &dmac->engine.channels);

 ret = devm_request_threaded_irq(dmac->dev, rchan->irq,
     rcar_dmac_isr_channel,
     rcar_dmac_isr_channel_thread, 0,
     irqname, rchan);
 if (ret) {
  dev_err(dmac->dev, "failed to request IRQ %u (%d)\n",
   rchan->irq, ret);
  return ret;
 }

 return 0;
}
