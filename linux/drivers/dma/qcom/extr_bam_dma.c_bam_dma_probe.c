
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;


struct resource {int dummy; } ;
struct TYPE_23__ {int of_node; int * dma_parms; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {int data; } ;
struct TYPE_24__ {int directions; TYPE_2__* dev; int device_tx_status; int device_issue_pending; int device_terminate_all; int device_resume; int device_pause; int device_config; int device_prep_slave_sg; int device_free_chan_resources; int device_alloc_chan_resources; void* dst_addr_widths; void* src_addr_widths; int residue_granularity; int cap_mask; int channels; } ;
struct bam_device {scalar_t__ irq; int ee; int num_channels; int num_ees; int * bamclk; int task; TYPE_15__* channels; TYPE_9__ common; scalar_t__ controlled_remotely; TYPE_2__* dev; int dma_parms; int * regs; int layout; } ;
struct TYPE_22__ {int task; } ;
struct TYPE_21__ {TYPE_1__ vc; } ;


 int BAM_DMA_AUTOSUSPEND_DELAY ;
 int BAM_FIFO_SIZE ;
 int BIT (int ) ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_RESIDUE_GRANULARITY_SEGMENT ;
 int DMA_SLAVE ;
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int bam_alloc_chan ;
 int bam_channel_init (struct bam_device*,TYPE_15__*,int) ;
 int bam_dma_irq ;
 int bam_dma_terminate_all ;
 int bam_dma_xlate ;
 int bam_free_chan ;
 int bam_init (struct bam_device*) ;
 int bam_issue_pending ;
 int bam_of_match ;
 int bam_pause ;
 int bam_prep_slave_sg ;
 int bam_resume ;
 int bam_slave_config ;
 int bam_tx_status ;
 int clk_disable_unprepare (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_err (TYPE_2__*,char*) ;
 int * devm_clk_get (TYPE_2__*,char*) ;
 int * devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 TYPE_15__* devm_kcalloc (TYPE_2__*,int,int,int ) ;
 struct bam_device* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,char*,struct bam_device*) ;
 int dma_async_device_register (TYPE_9__*) ;
 int dma_async_device_unregister (TYPE_9__*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_set_max_seg_size (TYPE_2__*,int ) ;
 int dma_tasklet ;
 int of_dma_controller_register (int ,int ,TYPE_9__*) ;
 struct of_device_id* of_match_node (int ,int ) ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 int of_property_read_u32 (int ,char*,int*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct bam_device*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_irq_safe (TYPE_2__*) ;
 int pm_runtime_mark_last_busy (TYPE_2__*) ;
 int pm_runtime_set_active (TYPE_2__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_2__*,int ) ;
 int pm_runtime_use_autosuspend (TYPE_2__*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int bam_dma_probe(struct platform_device *pdev)
{
 struct bam_device *bdev;
 const struct of_device_id *match;
 struct resource *iores;
 int ret, i;

 bdev = devm_kzalloc(&pdev->dev, sizeof(*bdev), GFP_KERNEL);
 if (!bdev)
  return -ENOMEM;

 bdev->dev = &pdev->dev;

 match = of_match_node(bam_of_match, pdev->dev.of_node);
 if (!match) {
  dev_err(&pdev->dev, "Unsupported BAM module\n");
  return -ENODEV;
 }

 bdev->layout = match->data;

 iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 bdev->regs = devm_ioremap_resource(&pdev->dev, iores);
 if (IS_ERR(bdev->regs))
  return PTR_ERR(bdev->regs);

 bdev->irq = platform_get_irq(pdev, 0);
 if (bdev->irq < 0)
  return bdev->irq;

 ret = of_property_read_u32(pdev->dev.of_node, "qcom,ee", &bdev->ee);
 if (ret) {
  dev_err(bdev->dev, "Execution environment unspecified\n");
  return ret;
 }

 bdev->controlled_remotely = of_property_read_bool(pdev->dev.of_node,
      "qcom,controlled-remotely");

 if (bdev->controlled_remotely) {
  ret = of_property_read_u32(pdev->dev.of_node, "num-channels",
        &bdev->num_channels);
  if (ret)
   dev_err(bdev->dev, "num-channels unspecified in dt\n");

  ret = of_property_read_u32(pdev->dev.of_node, "qcom,num-ees",
        &bdev->num_ees);
  if (ret)
   dev_err(bdev->dev, "num-ees unspecified in dt\n");
 }

 bdev->bamclk = devm_clk_get(bdev->dev, "bam_clk");
 if (IS_ERR(bdev->bamclk)) {
  if (!bdev->controlled_remotely)
   return PTR_ERR(bdev->bamclk);

  bdev->bamclk = ((void*)0);
 }

 ret = clk_prepare_enable(bdev->bamclk);
 if (ret) {
  dev_err(bdev->dev, "failed to prepare/enable clock\n");
  return ret;
 }

 ret = bam_init(bdev);
 if (ret)
  goto err_disable_clk;

 tasklet_init(&bdev->task, dma_tasklet, (unsigned long)bdev);

 bdev->channels = devm_kcalloc(bdev->dev, bdev->num_channels,
    sizeof(*bdev->channels), GFP_KERNEL);

 if (!bdev->channels) {
  ret = -ENOMEM;
  goto err_tasklet_kill;
 }


 INIT_LIST_HEAD(&bdev->common.channels);

 for (i = 0; i < bdev->num_channels; i++)
  bam_channel_init(bdev, &bdev->channels[i], i);

 ret = devm_request_irq(bdev->dev, bdev->irq, bam_dma_irq,
   IRQF_TRIGGER_HIGH, "bam_dma", bdev);
 if (ret)
  goto err_bam_channel_exit;


 bdev->common.dev = bdev->dev;
 bdev->common.dev->dma_parms = &bdev->dma_parms;
 ret = dma_set_max_seg_size(bdev->common.dev, BAM_FIFO_SIZE);
 if (ret) {
  dev_err(bdev->dev, "cannot set maximum segment size\n");
  goto err_bam_channel_exit;
 }

 platform_set_drvdata(pdev, bdev);


 dma_cap_zero(bdev->common.cap_mask);
 dma_cap_set(DMA_SLAVE, bdev->common.cap_mask);


 bdev->common.directions = BIT(DMA_DEV_TO_MEM) | BIT(DMA_MEM_TO_DEV);
 bdev->common.residue_granularity = DMA_RESIDUE_GRANULARITY_SEGMENT;
 bdev->common.src_addr_widths = DMA_SLAVE_BUSWIDTH_4_BYTES;
 bdev->common.dst_addr_widths = DMA_SLAVE_BUSWIDTH_4_BYTES;
 bdev->common.device_alloc_chan_resources = bam_alloc_chan;
 bdev->common.device_free_chan_resources = bam_free_chan;
 bdev->common.device_prep_slave_sg = bam_prep_slave_sg;
 bdev->common.device_config = bam_slave_config;
 bdev->common.device_pause = bam_pause;
 bdev->common.device_resume = bam_resume;
 bdev->common.device_terminate_all = bam_dma_terminate_all;
 bdev->common.device_issue_pending = bam_issue_pending;
 bdev->common.device_tx_status = bam_tx_status;
 bdev->common.dev = bdev->dev;

 ret = dma_async_device_register(&bdev->common);
 if (ret) {
  dev_err(bdev->dev, "failed to register dma async device\n");
  goto err_bam_channel_exit;
 }

 ret = of_dma_controller_register(pdev->dev.of_node, bam_dma_xlate,
     &bdev->common);
 if (ret)
  goto err_unregister_dma;

 if (bdev->controlled_remotely) {
  pm_runtime_disable(&pdev->dev);
  return 0;
 }

 pm_runtime_irq_safe(&pdev->dev);
 pm_runtime_set_autosuspend_delay(&pdev->dev, BAM_DMA_AUTOSUSPEND_DELAY);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_mark_last_busy(&pdev->dev);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 return 0;

err_unregister_dma:
 dma_async_device_unregister(&bdev->common);
err_bam_channel_exit:
 for (i = 0; i < bdev->num_channels; i++)
  tasklet_kill(&bdev->channels[i].vc.task);
err_tasklet_kill:
 tasklet_kill(&bdev->task);
err_disable_clk:
 clk_disable_unprepare(bdev->bamclk);

 return ret;
}
