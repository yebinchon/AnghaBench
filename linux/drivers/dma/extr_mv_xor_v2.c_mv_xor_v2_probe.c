
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_6__ {int tx_submit; } ;
struct mv_xor_v2_sw_desc {int idx; int free_list; TYPE_2__ async_tx; } ;
struct TYPE_5__ {int device_node; struct dma_device* device; } ;
struct dma_device {int max_xor; int channels; int device_prep_dma_xor; int device_prep_dma_interrupt; int device_prep_dma_memcpy; int * dev; int device_issue_pending; int device_tx_status; int cap_mask; } ;
struct mv_xor_v2_device {int desc_size; void* reg_clk; void* clk; int hw_desq; int hw_desq_virt; TYPE_1__ dmachan; struct dma_device dmadev; int free_sw_desc; struct mv_xor_v2_sw_desc* sw_desq; int lock; int irq_tasklet; struct msi_desc* msi_desc; void* glob_base; void* dma_base; } ;
struct mv_xor_v2_descriptor {int dummy; } ;
struct msi_desc {int irq; } ;


 int BUILD_BUG_ON (int) ;
 int DMA_BIT_MASK (int) ;
 int DMA_INTERRUPT ;
 int DMA_MEMCPY ;
 int DMA_XOR ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int MV_XOR_V2_DESC_NUM ;
 int MV_XOR_V2_EXT_DESC_SIZE ;
 int PTR_ERR (void*) ;
 int async_tx_ack (TYPE_2__*) ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_name (int *) ;
 int dev_notice (int *,char*) ;
 void* devm_clk_get (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 struct mv_xor_v2_sw_desc* devm_kcalloc (int *,int,int,int ) ;
 struct mv_xor_v2_device* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct mv_xor_v2_device*) ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_async_device_register (struct dma_device*) ;
 int dma_async_tx_descriptor_init (TYPE_2__*,TYPE_1__*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_cookie_init (TYPE_1__*) ;
 int dma_cookie_status ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 struct msi_desc* first_msi_entry (int *) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int mv_xor_v2_descq_init (struct mv_xor_v2_device*) ;
 int mv_xor_v2_enable_imsg_thrd (struct mv_xor_v2_device*) ;
 int mv_xor_v2_interrupt_handler ;
 int mv_xor_v2_issue_pending ;
 int mv_xor_v2_prep_dma_interrupt ;
 int mv_xor_v2_prep_dma_memcpy ;
 int mv_xor_v2_prep_dma_xor ;
 int mv_xor_v2_set_desc_size (struct mv_xor_v2_device*) ;
 int mv_xor_v2_set_msi_msg ;
 int mv_xor_v2_tasklet ;
 int mv_xor_v2_tx_submit ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_msi_domain_alloc_irqs (int *,int,int ) ;
 int platform_msi_domain_free_irqs (int *) ;
 int platform_set_drvdata (struct platform_device*,struct mv_xor_v2_device*) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int mv_xor_v2_probe(struct platform_device *pdev)
{
 struct mv_xor_v2_device *xor_dev;
 struct resource *res;
 int i, ret = 0;
 struct dma_device *dma_dev;
 struct mv_xor_v2_sw_desc *sw_desc;
 struct msi_desc *msi_desc;

 BUILD_BUG_ON(sizeof(struct mv_xor_v2_descriptor) !=
       MV_XOR_V2_EXT_DESC_SIZE);

 xor_dev = devm_kzalloc(&pdev->dev, sizeof(*xor_dev), GFP_KERNEL);
 if (!xor_dev)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 xor_dev->dma_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(xor_dev->dma_base))
  return PTR_ERR(xor_dev->dma_base);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 xor_dev->glob_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(xor_dev->glob_base))
  return PTR_ERR(xor_dev->glob_base);

 platform_set_drvdata(pdev, xor_dev);

 ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(40));
 if (ret)
  return ret;

 xor_dev->reg_clk = devm_clk_get(&pdev->dev, "reg");
 if (PTR_ERR(xor_dev->reg_clk) != -ENOENT) {
  if (!IS_ERR(xor_dev->reg_clk)) {
   ret = clk_prepare_enable(xor_dev->reg_clk);
   if (ret)
    return ret;
  } else {
   return PTR_ERR(xor_dev->reg_clk);
  }
 }

 xor_dev->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(xor_dev->clk) && PTR_ERR(xor_dev->clk) == -EPROBE_DEFER) {
  ret = EPROBE_DEFER;
  goto disable_reg_clk;
 }
 if (!IS_ERR(xor_dev->clk)) {
  ret = clk_prepare_enable(xor_dev->clk);
  if (ret)
   goto disable_reg_clk;
 }

 ret = platform_msi_domain_alloc_irqs(&pdev->dev, 1,
          mv_xor_v2_set_msi_msg);
 if (ret)
  goto disable_clk;

 msi_desc = first_msi_entry(&pdev->dev);
 if (!msi_desc)
  goto free_msi_irqs;
 xor_dev->msi_desc = msi_desc;

 ret = devm_request_irq(&pdev->dev, msi_desc->irq,
          mv_xor_v2_interrupt_handler, 0,
          dev_name(&pdev->dev), xor_dev);
 if (ret)
  goto free_msi_irqs;

 tasklet_init(&xor_dev->irq_tasklet, mv_xor_v2_tasklet,
       (unsigned long) xor_dev);

 xor_dev->desc_size = mv_xor_v2_set_desc_size(xor_dev);

 dma_cookie_init(&xor_dev->dmachan);






 xor_dev->hw_desq_virt =
  dma_alloc_coherent(&pdev->dev,
       xor_dev->desc_size * MV_XOR_V2_DESC_NUM,
       &xor_dev->hw_desq, GFP_KERNEL);
 if (!xor_dev->hw_desq_virt) {
  ret = -ENOMEM;
  goto free_msi_irqs;
 }


 xor_dev->sw_desq = devm_kcalloc(&pdev->dev,
     MV_XOR_V2_DESC_NUM, sizeof(*sw_desc),
     GFP_KERNEL);
 if (!xor_dev->sw_desq) {
  ret = -ENOMEM;
  goto free_hw_desq;
 }

 spin_lock_init(&xor_dev->lock);


 INIT_LIST_HEAD(&xor_dev->free_sw_desc);


 for (i = 0; i < MV_XOR_V2_DESC_NUM; i++) {
  struct mv_xor_v2_sw_desc *sw_desc =
   xor_dev->sw_desq + i;
  sw_desc->idx = i;
  dma_async_tx_descriptor_init(&sw_desc->async_tx,
          &xor_dev->dmachan);
  sw_desc->async_tx.tx_submit = mv_xor_v2_tx_submit;
  async_tx_ack(&sw_desc->async_tx);

  list_add(&sw_desc->free_list,
    &xor_dev->free_sw_desc);
 }

 dma_dev = &xor_dev->dmadev;


 dma_cap_zero(dma_dev->cap_mask);
 dma_cap_set(DMA_MEMCPY, dma_dev->cap_mask);
 dma_cap_set(DMA_XOR, dma_dev->cap_mask);
 dma_cap_set(DMA_INTERRUPT, dma_dev->cap_mask);


 INIT_LIST_HEAD(&dma_dev->channels);


 dma_dev->device_tx_status = dma_cookie_status;
 dma_dev->device_issue_pending = mv_xor_v2_issue_pending;
 dma_dev->dev = &pdev->dev;

 dma_dev->device_prep_dma_memcpy = mv_xor_v2_prep_dma_memcpy;
 dma_dev->device_prep_dma_interrupt = mv_xor_v2_prep_dma_interrupt;
 dma_dev->max_xor = 8;
 dma_dev->device_prep_dma_xor = mv_xor_v2_prep_dma_xor;

 xor_dev->dmachan.device = dma_dev;

 list_add_tail(&xor_dev->dmachan.device_node,
        &dma_dev->channels);

 mv_xor_v2_enable_imsg_thrd(xor_dev);

 mv_xor_v2_descq_init(xor_dev);

 ret = dma_async_device_register(dma_dev);
 if (ret)
  goto free_hw_desq;

 dev_notice(&pdev->dev, "Marvell Version 2 XOR driver\n");

 return 0;

free_hw_desq:
 dma_free_coherent(&pdev->dev,
     xor_dev->desc_size * MV_XOR_V2_DESC_NUM,
     xor_dev->hw_desq_virt, xor_dev->hw_desq);
free_msi_irqs:
 platform_msi_domain_free_irqs(&pdev->dev);
disable_clk:
 clk_disable_unprepare(xor_dev->clk);
disable_reg_clk:
 clk_disable_unprepare(xor_dev->reg_clk);
 return ret;
}
