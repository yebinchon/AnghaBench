
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_11__ {scalar_t__ of_node; scalar_t__ coherent_dma_mask; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int dummy; } ;
struct TYPE_12__ {int src_addr_widths; int dst_addr_widths; int directions; TYPE_1__* dev; int residue_granularity; int copy_align; int device_terminate_all; int device_config; int device_issue_pending; int device_prep_dma_cyclic; int device_prep_slave_sg; int device_prep_dma_memcpy; int device_tx_status; int device_free_chan_resources; int device_alloc_chan_resources; int cap_mask; int channels; } ;
struct mmp_pdma_device {int dma_channels; TYPE_3__ device; TYPE_1__* dev; int * phy; int base; int phy_lock; } ;
struct mmp_dma_platdata {int dma_channels; } ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;


 int BIT (int ) ;
 int DMAENGINE_ALIGN_8_BYTES ;
 scalar_t__ DMA_BIT_MASK (int) ;
 int DMA_CYCLIC ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEMCPY ;
 int DMA_MEM_TO_DEV ;
 int DMA_PRIVATE ;
 int DMA_RESIDUE_GRANULARITY_DESCRIPTOR ;
 int DMA_SLAVE ;
 int DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 struct mmp_dma_platdata* dev_get_platdata (TYPE_1__*) ;
 int dev_info (TYPE_1__*,char*,int) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 int * devm_kcalloc (TYPE_1__*,int,int,int ) ;
 struct mmp_pdma_device* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_irq (TYPE_1__*,int,int ,int ,char*,struct mmp_pdma_device*) ;
 int dma_async_device_register (TYPE_3__*) ;
 int dma_cap_set (int ,int ) ;
 int dma_set_mask (TYPE_1__*,scalar_t__) ;
 int mmp_pdma_alloc_chan_resources ;
 int mmp_pdma_chan_init (struct mmp_pdma_device*,int,int) ;
 int mmp_pdma_config ;
 int mmp_pdma_dma_xlate ;
 int mmp_pdma_dt_ids ;
 int mmp_pdma_free_chan_resources ;
 int mmp_pdma_int_handler ;
 int mmp_pdma_issue_pending ;
 int mmp_pdma_prep_dma_cyclic ;
 int mmp_pdma_prep_memcpy ;
 int mmp_pdma_prep_slave_sg ;
 int mmp_pdma_terminate_all ;
 int mmp_pdma_tx_status ;
 int of_dma_controller_register (scalar_t__,int ,struct mmp_pdma_device*) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int of_property_read_u32 (scalar_t__,char*,int*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mmp_pdma_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mmp_pdma_probe(struct platform_device *op)
{
 struct mmp_pdma_device *pdev;
 const struct of_device_id *of_id;
 struct mmp_dma_platdata *pdata = dev_get_platdata(&op->dev);
 struct resource *iores;
 int i, ret, irq = 0;
 int dma_channels = 0, irq_num = 0;
 const enum dma_slave_buswidth widths =
  DMA_SLAVE_BUSWIDTH_1_BYTE | DMA_SLAVE_BUSWIDTH_2_BYTES |
  DMA_SLAVE_BUSWIDTH_4_BYTES;

 pdev = devm_kzalloc(&op->dev, sizeof(*pdev), GFP_KERNEL);
 if (!pdev)
  return -ENOMEM;

 pdev->dev = &op->dev;

 spin_lock_init(&pdev->phy_lock);

 iores = platform_get_resource(op, IORESOURCE_MEM, 0);
 pdev->base = devm_ioremap_resource(pdev->dev, iores);
 if (IS_ERR(pdev->base))
  return PTR_ERR(pdev->base);

 of_id = of_match_device(mmp_pdma_dt_ids, pdev->dev);
 if (of_id)
  of_property_read_u32(pdev->dev->of_node, "#dma-channels",
         &dma_channels);
 else if (pdata && pdata->dma_channels)
  dma_channels = pdata->dma_channels;
 else
  dma_channels = 32;
 pdev->dma_channels = dma_channels;

 for (i = 0; i < dma_channels; i++) {
  if (platform_get_irq(op, i) > 0)
   irq_num++;
 }

 pdev->phy = devm_kcalloc(pdev->dev, dma_channels, sizeof(*pdev->phy),
     GFP_KERNEL);
 if (pdev->phy == ((void*)0))
  return -ENOMEM;

 INIT_LIST_HEAD(&pdev->device.channels);

 if (irq_num != dma_channels) {

  irq = platform_get_irq(op, 0);
  ret = devm_request_irq(pdev->dev, irq, mmp_pdma_int_handler,
           IRQF_SHARED, "pdma", pdev);
  if (ret)
   return ret;
 }

 for (i = 0; i < dma_channels; i++) {
  irq = (irq_num != dma_channels) ? 0 : platform_get_irq(op, i);
  ret = mmp_pdma_chan_init(pdev, i, irq);
  if (ret)
   return ret;
 }

 dma_cap_set(DMA_SLAVE, pdev->device.cap_mask);
 dma_cap_set(DMA_MEMCPY, pdev->device.cap_mask);
 dma_cap_set(DMA_CYCLIC, pdev->device.cap_mask);
 dma_cap_set(DMA_PRIVATE, pdev->device.cap_mask);
 pdev->device.dev = &op->dev;
 pdev->device.device_alloc_chan_resources = mmp_pdma_alloc_chan_resources;
 pdev->device.device_free_chan_resources = mmp_pdma_free_chan_resources;
 pdev->device.device_tx_status = mmp_pdma_tx_status;
 pdev->device.device_prep_dma_memcpy = mmp_pdma_prep_memcpy;
 pdev->device.device_prep_slave_sg = mmp_pdma_prep_slave_sg;
 pdev->device.device_prep_dma_cyclic = mmp_pdma_prep_dma_cyclic;
 pdev->device.device_issue_pending = mmp_pdma_issue_pending;
 pdev->device.device_config = mmp_pdma_config;
 pdev->device.device_terminate_all = mmp_pdma_terminate_all;
 pdev->device.copy_align = DMAENGINE_ALIGN_8_BYTES;
 pdev->device.src_addr_widths = widths;
 pdev->device.dst_addr_widths = widths;
 pdev->device.directions = BIT(DMA_MEM_TO_DEV) | BIT(DMA_DEV_TO_MEM);
 pdev->device.residue_granularity = DMA_RESIDUE_GRANULARITY_DESCRIPTOR;

 if (pdev->dev->coherent_dma_mask)
  dma_set_mask(pdev->dev, pdev->dev->coherent_dma_mask);
 else
  dma_set_mask(pdev->dev, DMA_BIT_MASK(64));

 ret = dma_async_device_register(&pdev->device);
 if (ret) {
  dev_err(pdev->device.dev, "unable to register\n");
  return ret;
 }

 if (op->dev.of_node) {

  ret = of_dma_controller_register(op->dev.of_node,
       mmp_pdma_dma_xlate, pdev);
  if (ret < 0) {
   dev_err(&op->dev, "of_dma_controller_register failed\n");
   return ret;
  }
 }

 platform_set_drvdata(op, pdev);
 dev_info(pdev->device.dev, "initialized %d channels\n", dma_channels);
 return 0;
}
