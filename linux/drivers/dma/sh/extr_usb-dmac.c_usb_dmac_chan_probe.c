
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int desc_free; } ;
struct usb_dmac_chan {unsigned int index; int desc_got; int desc_freed; TYPE_1__ vc; int irq; scalar_t__ iomem; } ;
struct usb_dmac {int engine; int dev; scalar_t__ iomem; } ;
struct platform_device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_SHARED ;
 scalar_t__ USB_DMAC_CHAN_OFFSET (unsigned int) ;
 int dev_err (int ,char*,int ,int) ;
 int dev_name (int ) ;
 char* devm_kasprintf (int ,int ,char*,int ,unsigned int) ;
 int devm_request_irq (int ,int ,int ,int ,char*,struct usb_dmac_chan*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int sprintf (char*,char*,unsigned int) ;
 struct platform_device* to_platform_device (int ) ;
 int usb_dmac_isr_channel ;
 int usb_dmac_virt_desc_free ;
 int vchan_init (TYPE_1__*,int *) ;

__attribute__((used)) static int usb_dmac_chan_probe(struct usb_dmac *dmac,
          struct usb_dmac_chan *uchan,
          unsigned int index)
{
 struct platform_device *pdev = to_platform_device(dmac->dev);
 char pdev_irqname[5];
 char *irqname;
 int ret;

 uchan->index = index;
 uchan->iomem = dmac->iomem + USB_DMAC_CHAN_OFFSET(index);


 sprintf(pdev_irqname, "ch%u", index);
 uchan->irq = platform_get_irq_byname(pdev, pdev_irqname);
 if (uchan->irq < 0)
  return -ENODEV;

 irqname = devm_kasprintf(dmac->dev, GFP_KERNEL, "%s:%u",
     dev_name(dmac->dev), index);
 if (!irqname)
  return -ENOMEM;

 ret = devm_request_irq(dmac->dev, uchan->irq, usb_dmac_isr_channel,
          IRQF_SHARED, irqname, uchan);
 if (ret) {
  dev_err(dmac->dev, "failed to request IRQ %u (%d)\n",
   uchan->irq, ret);
  return ret;
 }

 uchan->vc.desc_free = usb_dmac_virt_desc_free;
 vchan_init(&uchan->vc, &dmac->engine);
 INIT_LIST_HEAD(&uchan->desc_freed);
 INIT_LIST_HEAD(&uchan->desc_got);

 return 0;
}
