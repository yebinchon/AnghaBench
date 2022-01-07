
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct dma_device {int src_addr_widths; int dst_addr_widths; int directions; int device_issue_pending; int device_tx_status; int device_terminate_all; int device_prep_slave_sg; int device_free_chan_resources; int device_alloc_chan_resources; int residue_granularity; TYPE_1__* dev; int cap_mask; int channels; } ;
struct usb_dmac {unsigned int n_channels; struct dma_device engine; int * channels; int iomem; TYPE_1__* dev; } ;
struct resource {int dummy; } ;
struct TYPE_10__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;


 int BIT (int ) ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_RESIDUE_GRANULARITY_BURST ;
 int DMA_SLAVE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int USB_DMAC_SLAVE_BUSWIDTH ;
 int dev_err (TYPE_1__*,char*,...) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 int * devm_kcalloc (TYPE_1__*,unsigned int,int,int ) ;
 struct usb_dmac* devm_kzalloc (TYPE_1__*,int,int ) ;
 int dma_async_device_register (struct dma_device*) ;
 int dma_cap_set (int ,int ) ;
 int of_dma_controller_free (int ) ;
 int of_dma_controller_register (int ,int ,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct usb_dmac*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_get_sync (TYPE_1__*) ;
 int pm_runtime_put (TYPE_1__*) ;
 int usb_dmac_alloc_chan_resources ;
 int usb_dmac_chan_probe (struct usb_dmac*,int *,unsigned int) ;
 int usb_dmac_chan_terminate_all ;
 int usb_dmac_free_chan_resources ;
 int usb_dmac_init (struct usb_dmac*) ;
 int usb_dmac_issue_pending ;
 int usb_dmac_of_xlate ;
 int usb_dmac_parse_of (TYPE_1__*,struct usb_dmac*) ;
 int usb_dmac_prep_slave_sg ;
 int usb_dmac_tx_status ;

__attribute__((used)) static int usb_dmac_probe(struct platform_device *pdev)
{
 const enum dma_slave_buswidth widths = USB_DMAC_SLAVE_BUSWIDTH;
 struct dma_device *engine;
 struct usb_dmac *dmac;
 struct resource *mem;
 unsigned int i;
 int ret;

 dmac = devm_kzalloc(&pdev->dev, sizeof(*dmac), GFP_KERNEL);
 if (!dmac)
  return -ENOMEM;

 dmac->dev = &pdev->dev;
 platform_set_drvdata(pdev, dmac);

 ret = usb_dmac_parse_of(&pdev->dev, dmac);
 if (ret < 0)
  return ret;

 dmac->channels = devm_kcalloc(&pdev->dev, dmac->n_channels,
          sizeof(*dmac->channels), GFP_KERNEL);
 if (!dmac->channels)
  return -ENOMEM;


 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dmac->iomem = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(dmac->iomem))
  return PTR_ERR(dmac->iomem);


 pm_runtime_enable(&pdev->dev);
 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "runtime PM get sync failed (%d)\n", ret);
  goto error_pm;
 }

 ret = usb_dmac_init(dmac);

 if (ret) {
  dev_err(&pdev->dev, "failed to reset device\n");
  goto error;
 }


 INIT_LIST_HEAD(&dmac->engine.channels);

 for (i = 0; i < dmac->n_channels; ++i) {
  ret = usb_dmac_chan_probe(dmac, &dmac->channels[i], i);
  if (ret < 0)
   goto error;
 }


 ret = of_dma_controller_register(pdev->dev.of_node, usb_dmac_of_xlate,
      ((void*)0));
 if (ret < 0)
  goto error;






 engine = &dmac->engine;
 dma_cap_set(DMA_SLAVE, engine->cap_mask);

 engine->dev = &pdev->dev;

 engine->src_addr_widths = widths;
 engine->dst_addr_widths = widths;
 engine->directions = BIT(DMA_MEM_TO_DEV) | BIT(DMA_DEV_TO_MEM);
 engine->residue_granularity = DMA_RESIDUE_GRANULARITY_BURST;

 engine->device_alloc_chan_resources = usb_dmac_alloc_chan_resources;
 engine->device_free_chan_resources = usb_dmac_free_chan_resources;
 engine->device_prep_slave_sg = usb_dmac_prep_slave_sg;
 engine->device_terminate_all = usb_dmac_chan_terminate_all;
 engine->device_tx_status = usb_dmac_tx_status;
 engine->device_issue_pending = usb_dmac_issue_pending;

 ret = dma_async_device_register(engine);
 if (ret < 0)
  goto error;

 pm_runtime_put(&pdev->dev);
 return 0;

error:
 of_dma_controller_free(pdev->dev.of_node);
 pm_runtime_put(&pdev->dev);
error_pm:
 pm_runtime_disable(&pdev->dev);
 return ret;
}
