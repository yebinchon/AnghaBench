
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_11__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_12__ {TYPE_2__* dev; int copy_align; int device_terminate_all; int device_resume; int device_pause; int device_config; int device_issue_pending; int device_tx_status; int device_prep_dma_cyclic; int device_free_chan_resources; int device_alloc_chan_resources; int cap_mask; int channels; } ;
struct mmp_tdma_device {TYPE_3__ device; int base; TYPE_2__* dev; } ;
struct gen_pool {int dummy; } ;
typedef enum mmp_tdma_type { ____Placeholder_mmp_tdma_type } mmp_tdma_type ;
struct TYPE_10__ {int driver_data; } ;


 int DMAENGINE_ALIGN_8_BYTES ;
 int DMA_BIT_MASK (int) ;
 int DMA_CYCLIC ;
 int DMA_SLAVE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TDMA_CHANNEL_NUM ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct mmp_tdma_device* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,char*,struct mmp_tdma_device*) ;
 int dma_cap_set (int ,int ) ;
 int dma_set_mask (TYPE_2__*,int ) ;
 int dmaenginem_async_device_register (TYPE_3__*) ;
 int mmp_tdma_alloc_chan_resources ;
 int mmp_tdma_chan_init (struct mmp_tdma_device*,int,int,int,struct gen_pool*) ;
 int mmp_tdma_config ;
 int mmp_tdma_dt_ids ;
 int mmp_tdma_free_chan_resources ;
 int mmp_tdma_int_handler ;
 int mmp_tdma_issue_pending ;
 int mmp_tdma_pause_chan ;
 int mmp_tdma_prep_dma_cyclic ;
 int mmp_tdma_resume_chan ;
 int mmp_tdma_terminate_all ;
 int mmp_tdma_tx_status ;
 int mmp_tdma_xlate ;
 int of_dma_controller_register (scalar_t__,int ,struct mmp_tdma_device*) ;
 struct gen_pool* of_gen_pool_get (scalar_t__,char*,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 TYPE_1__* platform_get_device_id (struct platform_device*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mmp_tdma_device*) ;
 struct gen_pool* sram_get_gpool (char*) ;

__attribute__((used)) static int mmp_tdma_probe(struct platform_device *pdev)
{
 enum mmp_tdma_type type;
 const struct of_device_id *of_id;
 struct mmp_tdma_device *tdev;
 struct resource *iores;
 int i, ret;
 int irq = 0, irq_num = 0;
 int chan_num = TDMA_CHANNEL_NUM;
 struct gen_pool *pool = ((void*)0);

 of_id = of_match_device(mmp_tdma_dt_ids, &pdev->dev);
 if (of_id)
  type = (enum mmp_tdma_type) of_id->data;
 else
  type = platform_get_device_id(pdev)->driver_data;


 tdev = devm_kzalloc(&pdev->dev, sizeof(*tdev), GFP_KERNEL);
 if (!tdev)
  return -ENOMEM;

 tdev->dev = &pdev->dev;

 for (i = 0; i < chan_num; i++) {
  if (platform_get_irq(pdev, i) > 0)
   irq_num++;
 }

 iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 tdev->base = devm_ioremap_resource(&pdev->dev, iores);
 if (IS_ERR(tdev->base))
  return PTR_ERR(tdev->base);

 INIT_LIST_HEAD(&tdev->device.channels);

 if (pdev->dev.of_node)
  pool = of_gen_pool_get(pdev->dev.of_node, "asram", 0);
 else
  pool = sram_get_gpool("asram");
 if (!pool) {
  dev_err(&pdev->dev, "asram pool not available\n");
  return -ENOMEM;
 }

 if (irq_num != chan_num) {
  irq = platform_get_irq(pdev, 0);
  ret = devm_request_irq(&pdev->dev, irq,
   mmp_tdma_int_handler, 0, "tdma", tdev);
  if (ret)
   return ret;
 }


 for (i = 0; i < chan_num; i++) {
  irq = (irq_num != chan_num) ? 0 : platform_get_irq(pdev, i);
  ret = mmp_tdma_chan_init(tdev, i, irq, type, pool);
  if (ret)
   return ret;
 }

 dma_cap_set(DMA_SLAVE, tdev->device.cap_mask);
 dma_cap_set(DMA_CYCLIC, tdev->device.cap_mask);
 tdev->device.dev = &pdev->dev;
 tdev->device.device_alloc_chan_resources =
     mmp_tdma_alloc_chan_resources;
 tdev->device.device_free_chan_resources =
     mmp_tdma_free_chan_resources;
 tdev->device.device_prep_dma_cyclic = mmp_tdma_prep_dma_cyclic;
 tdev->device.device_tx_status = mmp_tdma_tx_status;
 tdev->device.device_issue_pending = mmp_tdma_issue_pending;
 tdev->device.device_config = mmp_tdma_config;
 tdev->device.device_pause = mmp_tdma_pause_chan;
 tdev->device.device_resume = mmp_tdma_resume_chan;
 tdev->device.device_terminate_all = mmp_tdma_terminate_all;
 tdev->device.copy_align = DMAENGINE_ALIGN_8_BYTES;

 dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
 platform_set_drvdata(pdev, tdev);

 ret = dmaenginem_async_device_register(&tdev->device);
 if (ret) {
  dev_err(tdev->device.dev, "unable to register\n");
  return ret;
 }

 if (pdev->dev.of_node) {
  ret = of_dma_controller_register(pdev->dev.of_node,
       mmp_tdma_xlate, tdev);
  if (ret) {
   dev_err(tdev->device.dev,
    "failed to register controller\n");
   return ret;
  }
 }

 dev_info(tdev->device.dev, "initialized\n");
 return 0;
}
