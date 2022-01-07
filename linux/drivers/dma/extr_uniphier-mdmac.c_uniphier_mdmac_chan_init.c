
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_mdmac_device {int ddev; scalar_t__ reg_base; struct uniphier_mdmac_chan* channels; } ;
struct TYPE_2__ {int desc_free; } ;
struct uniphier_mdmac_chan {int chan_id; TYPE_1__ vc; scalar_t__ reg_ch_base; struct uniphier_mdmac_device* mdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 scalar_t__ UNIPHIER_MDMAC_CH_OFFSET ;
 int UNIPHIER_MDMAC_CH_STRIDE ;
 char* devm_kasprintf (struct device*,int ,char*,int) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct uniphier_mdmac_chan*) ;
 int platform_get_irq (struct platform_device*,int) ;
 int uniphier_mdmac_desc_free ;
 int uniphier_mdmac_interrupt ;
 int vchan_init (TYPE_1__*,int *) ;

__attribute__((used)) static int uniphier_mdmac_chan_init(struct platform_device *pdev,
        struct uniphier_mdmac_device *mdev,
        int chan_id)
{
 struct device *dev = &pdev->dev;
 struct uniphier_mdmac_chan *mc = &mdev->channels[chan_id];
 char *irq_name;
 int irq, ret;

 irq = platform_get_irq(pdev, chan_id);
 if (irq < 0)
  return irq;

 irq_name = devm_kasprintf(dev, GFP_KERNEL, "uniphier-mio-dmac-ch%d",
      chan_id);
 if (!irq_name)
  return -ENOMEM;

 ret = devm_request_irq(dev, irq, uniphier_mdmac_interrupt,
          IRQF_SHARED, irq_name, mc);
 if (ret)
  return ret;

 mc->mdev = mdev;
 mc->reg_ch_base = mdev->reg_base + UNIPHIER_MDMAC_CH_OFFSET +
     UNIPHIER_MDMAC_CH_STRIDE * chan_id;
 mc->chan_id = chan_id;
 mc->vc.desc_free = uniphier_mdmac_desc_free;
 vchan_init(&mc->vc, &mdev->ddev);

 return 0;
}
