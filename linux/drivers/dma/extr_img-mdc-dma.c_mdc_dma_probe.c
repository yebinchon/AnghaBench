
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int u32 ;
struct resource {int dummy; } ;
struct TYPE_20__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct mdc_hw_list_desc {int dummy; } ;
struct TYPE_19__ {int directions; int src_addr_widths; int dst_addr_widths; int channels; int residue_granularity; int device_config; int device_synchronize; int device_terminate_all; int device_issue_pending; int device_tx_status; int device_free_chan_resources; int device_alloc_chan_resources; int device_prep_dma_memcpy; int device_prep_dma_cyclic; int device_prep_slave_sg; TYPE_3__* dev; int cap_mask; } ;
struct mdc_dma {int nr_channels; int nr_threads; int bus_width; int max_burst_mult; TYPE_2__ dma_dev; int desc_pool; struct mdc_chan* channels; scalar_t__ max_xfer_size; int clk; int periph_regs; int regs; int soc; } ;
struct TYPE_18__ {int desc_free; } ;
struct mdc_chan {unsigned int chan_nr; scalar_t__ irq; TYPE_1__ vc; struct mdc_dma* mdma; } ;


 int BIT (unsigned int) ;
 int DMA_CYCLIC ;
 unsigned int DMA_DEV_TO_MEM ;
 int DMA_MEMCPY ;
 unsigned int DMA_MEM_TO_DEV ;
 int DMA_PRIVATE ;
 int DMA_RESIDUE_GRANULARITY_BURST ;
 int DMA_SLAVE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int IRQ_TYPE_LEVEL_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int MDC_GLOBAL_CONFIG_A ;
 int MDC_GLOBAL_CONFIG_A_DMA_CONTEXTS_MASK ;
 int MDC_GLOBAL_CONFIG_A_DMA_CONTEXTS_SHIFT ;
 int MDC_GLOBAL_CONFIG_A_SYS_DAT_WIDTH_MASK ;
 int MDC_GLOBAL_CONFIG_A_SYS_DAT_WIDTH_SHIFT ;
 int MDC_GLOBAL_CONFIG_A_THREAD_ID_WIDTH_MASK ;
 int MDC_GLOBAL_CONFIG_A_THREAD_ID_WIDTH_SHIFT ;
 scalar_t__ MDC_TRANSFER_SIZE_MASK ;
 int PTR_ERR (int ) ;
 int dev_info (TYPE_3__*,char*,unsigned int,int) ;
 int dev_name (TYPE_3__*) ;
 int devm_clk_get (TYPE_3__*,char*) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 struct mdc_dma* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_irq (TYPE_3__*,int,int ,int ,int ,struct mdc_chan*) ;
 int dma_async_device_register (TYPE_2__*) ;
 int dma_async_device_unregister (TYPE_2__*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dmam_pool_create (int ,TYPE_3__*,int,int,int ) ;
 int img_mdc_runtime_resume (TYPE_3__*) ;
 int img_mdc_runtime_suspend (TYPE_3__*) ;
 int mdc_alloc_chan_resources ;
 int mdc_chan_irq ;
 int mdc_desc_free ;
 int mdc_free_chan_resources ;
 int mdc_issue_pending ;
 int mdc_of_xlate ;
 int mdc_prep_dma_cyclic ;
 int mdc_prep_dma_memcpy ;
 int mdc_prep_slave_sg ;
 int mdc_readl (struct mdc_dma*,int ) ;
 int mdc_slave_config ;
 int mdc_synchronize ;
 int mdc_terminate_all ;
 int mdc_tx_status ;
 int of_device_get_match_data (TYPE_3__*) ;
 int of_dma_controller_register (int ,int ,struct mdc_dma*) ;
 int of_property_read_u32 (int ,char*,int*) ;
 scalar_t__ platform_get_irq (struct platform_device*,unsigned int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mdc_dma*) ;
 int pm_runtime_disable (TYPE_3__*) ;
 int pm_runtime_enable (TYPE_3__*) ;
 int pm_runtime_enabled (TYPE_3__*) ;
 int syscon_regmap_lookup_by_phandle (int ,char*) ;
 int vchan_init (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int mdc_dma_probe(struct platform_device *pdev)
{
 struct mdc_dma *mdma;
 struct resource *res;
 unsigned int i;
 u32 val;
 int ret;

 mdma = devm_kzalloc(&pdev->dev, sizeof(*mdma), GFP_KERNEL);
 if (!mdma)
  return -ENOMEM;
 platform_set_drvdata(pdev, mdma);

 mdma->soc = of_device_get_match_data(&pdev->dev);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mdma->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(mdma->regs))
  return PTR_ERR(mdma->regs);

 mdma->periph_regs = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
           "img,cr-periph");
 if (IS_ERR(mdma->periph_regs))
  return PTR_ERR(mdma->periph_regs);

 mdma->clk = devm_clk_get(&pdev->dev, "sys");
 if (IS_ERR(mdma->clk))
  return PTR_ERR(mdma->clk);

 dma_cap_zero(mdma->dma_dev.cap_mask);
 dma_cap_set(DMA_SLAVE, mdma->dma_dev.cap_mask);
 dma_cap_set(DMA_PRIVATE, mdma->dma_dev.cap_mask);
 dma_cap_set(DMA_CYCLIC, mdma->dma_dev.cap_mask);
 dma_cap_set(DMA_MEMCPY, mdma->dma_dev.cap_mask);

 val = mdc_readl(mdma, MDC_GLOBAL_CONFIG_A);
 mdma->nr_channels = (val >> MDC_GLOBAL_CONFIG_A_DMA_CONTEXTS_SHIFT) &
  MDC_GLOBAL_CONFIG_A_DMA_CONTEXTS_MASK;
 mdma->nr_threads =
  1 << ((val >> MDC_GLOBAL_CONFIG_A_THREAD_ID_WIDTH_SHIFT) &
        MDC_GLOBAL_CONFIG_A_THREAD_ID_WIDTH_MASK);
 mdma->bus_width =
  (1 << ((val >> MDC_GLOBAL_CONFIG_A_SYS_DAT_WIDTH_SHIFT) &
         MDC_GLOBAL_CONFIG_A_SYS_DAT_WIDTH_MASK)) / 8;
 mdma->max_xfer_size = MDC_TRANSFER_SIZE_MASK + 1 - mdma->bus_width;

 of_property_read_u32(pdev->dev.of_node, "dma-channels",
        &mdma->nr_channels);
 ret = of_property_read_u32(pdev->dev.of_node,
       "img,max-burst-multiplier",
       &mdma->max_burst_mult);
 if (ret)
  return ret;

 mdma->dma_dev.dev = &pdev->dev;
 mdma->dma_dev.device_prep_slave_sg = mdc_prep_slave_sg;
 mdma->dma_dev.device_prep_dma_cyclic = mdc_prep_dma_cyclic;
 mdma->dma_dev.device_prep_dma_memcpy = mdc_prep_dma_memcpy;
 mdma->dma_dev.device_alloc_chan_resources = mdc_alloc_chan_resources;
 mdma->dma_dev.device_free_chan_resources = mdc_free_chan_resources;
 mdma->dma_dev.device_tx_status = mdc_tx_status;
 mdma->dma_dev.device_issue_pending = mdc_issue_pending;
 mdma->dma_dev.device_terminate_all = mdc_terminate_all;
 mdma->dma_dev.device_synchronize = mdc_synchronize;
 mdma->dma_dev.device_config = mdc_slave_config;

 mdma->dma_dev.directions = BIT(DMA_DEV_TO_MEM) | BIT(DMA_MEM_TO_DEV);
 mdma->dma_dev.residue_granularity = DMA_RESIDUE_GRANULARITY_BURST;
 for (i = 1; i <= mdma->bus_width; i <<= 1) {
  mdma->dma_dev.src_addr_widths |= BIT(i);
  mdma->dma_dev.dst_addr_widths |= BIT(i);
 }

 INIT_LIST_HEAD(&mdma->dma_dev.channels);
 for (i = 0; i < mdma->nr_channels; i++) {
  struct mdc_chan *mchan = &mdma->channels[i];

  mchan->mdma = mdma;
  mchan->chan_nr = i;
  mchan->irq = platform_get_irq(pdev, i);
  if (mchan->irq < 0)
   return mchan->irq;

  ret = devm_request_irq(&pdev->dev, mchan->irq, mdc_chan_irq,
           IRQ_TYPE_LEVEL_HIGH,
           dev_name(&pdev->dev), mchan);
  if (ret < 0)
   return ret;

  mchan->vc.desc_free = mdc_desc_free;
  vchan_init(&mchan->vc, &mdma->dma_dev);
 }

 mdma->desc_pool = dmam_pool_create(dev_name(&pdev->dev), &pdev->dev,
        sizeof(struct mdc_hw_list_desc),
        4, 0);
 if (!mdma->desc_pool)
  return -ENOMEM;

 pm_runtime_enable(&pdev->dev);
 if (!pm_runtime_enabled(&pdev->dev)) {
  ret = img_mdc_runtime_resume(&pdev->dev);
  if (ret)
   return ret;
 }

 ret = dma_async_device_register(&mdma->dma_dev);
 if (ret)
  goto suspend;

 ret = of_dma_controller_register(pdev->dev.of_node, mdc_of_xlate, mdma);
 if (ret)
  goto unregister;

 dev_info(&pdev->dev, "MDC with %u channels and %u threads\n",
   mdma->nr_channels, mdma->nr_threads);

 return 0;

unregister:
 dma_async_device_unregister(&mdma->dma_dev);
suspend:
 if (!pm_runtime_enabled(&pdev->dev))
  img_mdc_runtime_suspend(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 return ret;
}
