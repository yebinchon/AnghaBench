
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_device {int directions; int channels; int device_issue_pending; int device_tx_status; int device_synchronize; int device_terminate_all; int device_prep_slave_sg; int device_free_chan_resources; int residue_granularity; void* dst_addr_widths; void* src_addr_widths; int cap_mask; struct device* dev; } ;
struct uniphier_mdmac_device {int clk; struct dma_device ddev; int reg_base; } ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 int BIT (int ) ;
 int DMA_BIT_MASK (int) ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PRIVATE ;
 int DMA_RESIDUE_GRANULARITY_SEGMENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 void* UNIPHIER_MDMAC_SLAVE_BUSWIDTHS ;
 int channels ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct uniphier_mdmac_device* devm_kzalloc (struct device*,int ,int ) ;
 int dma_async_device_register (struct dma_device*) ;
 int dma_async_device_unregister (struct dma_device*) ;
 int dma_cap_set (int ,int ) ;
 int dma_set_mask (struct device*,int ) ;
 int of_dma_controller_register (int ,int ,struct dma_device*) ;
 int of_dma_xlate_by_chan_id ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_irq_count (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct uniphier_mdmac_device*) ;
 int struct_size (struct uniphier_mdmac_device*,int ,int) ;
 int uniphier_mdmac_chan_init (struct platform_device*,struct uniphier_mdmac_device*,int) ;
 int uniphier_mdmac_free_chan_resources ;
 int uniphier_mdmac_issue_pending ;
 int uniphier_mdmac_prep_slave_sg ;
 int uniphier_mdmac_synchronize ;
 int uniphier_mdmac_terminate_all ;
 int uniphier_mdmac_tx_status ;

__attribute__((used)) static int uniphier_mdmac_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct uniphier_mdmac_device *mdev;
 struct dma_device *ddev;
 struct resource *res;
 int nr_chans, ret, i;

 nr_chans = platform_irq_count(pdev);
 if (nr_chans < 0)
  return nr_chans;

 ret = dma_set_mask(dev, DMA_BIT_MASK(32));
 if (ret)
  return ret;

 mdev = devm_kzalloc(dev, struct_size(mdev, channels, nr_chans),
       GFP_KERNEL);
 if (!mdev)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mdev->reg_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(mdev->reg_base))
  return PTR_ERR(mdev->reg_base);

 mdev->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(mdev->clk)) {
  dev_err(dev, "failed to get clock\n");
  return PTR_ERR(mdev->clk);
 }

 ret = clk_prepare_enable(mdev->clk);
 if (ret)
  return ret;

 ddev = &mdev->ddev;
 ddev->dev = dev;
 dma_cap_set(DMA_PRIVATE, ddev->cap_mask);
 ddev->src_addr_widths = UNIPHIER_MDMAC_SLAVE_BUSWIDTHS;
 ddev->dst_addr_widths = UNIPHIER_MDMAC_SLAVE_BUSWIDTHS;
 ddev->directions = BIT(DMA_MEM_TO_DEV) | BIT(DMA_DEV_TO_MEM);
 ddev->residue_granularity = DMA_RESIDUE_GRANULARITY_SEGMENT;
 ddev->device_free_chan_resources = uniphier_mdmac_free_chan_resources;
 ddev->device_prep_slave_sg = uniphier_mdmac_prep_slave_sg;
 ddev->device_terminate_all = uniphier_mdmac_terminate_all;
 ddev->device_synchronize = uniphier_mdmac_synchronize;
 ddev->device_tx_status = uniphier_mdmac_tx_status;
 ddev->device_issue_pending = uniphier_mdmac_issue_pending;
 INIT_LIST_HEAD(&ddev->channels);

 for (i = 0; i < nr_chans; i++) {
  ret = uniphier_mdmac_chan_init(pdev, mdev, i);
  if (ret)
   goto disable_clk;
 }

 ret = dma_async_device_register(ddev);
 if (ret)
  goto disable_clk;

 ret = of_dma_controller_register(dev->of_node, of_dma_xlate_by_chan_id,
      ddev);
 if (ret)
  goto unregister_dmac;

 platform_set_drvdata(pdev, mdev);

 return 0;

unregister_dmac:
 dma_async_device_unregister(ddev);
disable_clk:
 clk_disable_unprepare(mdev->clk);

 return ret;
}
