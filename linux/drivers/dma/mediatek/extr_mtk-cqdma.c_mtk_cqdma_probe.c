
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t u32 ;
struct resource {int start; } ;
struct TYPE_13__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_12__ {int desc_free; } ;
struct mtk_cqdma_vchan {int issue_completion; TYPE_2__ vc; } ;
struct dma_device {int channels; TYPE_3__* dev; int residue_granularity; int directions; void* dst_addr_widths; void* src_addr_widths; int device_terminate_all; int device_prep_dma_memcpy; int device_issue_pending; int device_tx_status; int device_free_chan_resources; int device_alloc_chan_resources; int copy_align; int cap_mask; } ;
struct mtk_cqdma_device {int dma_requests; int dma_channels; TYPE_1__** pc; struct mtk_cqdma_vchan* vc; int clk; struct dma_device ddev; } ;
struct TYPE_11__ {int tasklet; int irq; int base; int refcnt; int lock; int queue; } ;


 int BIT (int ) ;
 int DMA_MEMCPY ;
 int DMA_MEM_TO_MEM ;
 int DMA_RESIDUE_GRANULARITY_SEGMENT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int MTK_CQDMA_ALIGN_SIZE ;
 void* MTK_CQDMA_DMA_BUSWIDTHS ;
 int MTK_CQDMA_NR_PCHANS ;
 int MTK_CQDMA_NR_VCHANS ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_3__*,char*,int) ;
 int dev_info (TYPE_3__*,char*,...) ;
 int dev_name (TYPE_3__*) ;
 int devm_clk_get (TYPE_3__*,char*) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 void* devm_kcalloc (TYPE_3__*,int,int,int ) ;
 struct mtk_cqdma_device* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_irq (TYPE_3__*,int ,int ,int ,int,struct mtk_cqdma_device*) ;
 int dma_async_device_register (struct dma_device*) ;
 int dma_async_device_unregister (struct dma_device*) ;
 int dma_cap_set (int ,int ) ;
 int init_completion (int *) ;
 int mtk_cqdma_alloc_chan_resources ;
 int mtk_cqdma_free_chan_resources ;
 int mtk_cqdma_hw_init (struct mtk_cqdma_device*) ;
 int mtk_cqdma_irq ;
 int mtk_cqdma_issue_pending ;
 int mtk_cqdma_prep_dma_memcpy ;
 int mtk_cqdma_tasklet_cb ;
 int mtk_cqdma_terminate_all ;
 int mtk_cqdma_tx_status ;
 int mtk_cqdma_vdesc_free ;
 int of_dma_controller_register (scalar_t__,int ,struct mtk_cqdma_device*) ;
 int of_dma_xlate_by_chan_id ;
 scalar_t__ of_property_read_u32 (scalar_t__,char*,int*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,size_t) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_cqdma_device*) ;
 int refcount_set (int *,int ) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int vchan_init (TYPE_2__*,struct dma_device*) ;

__attribute__((used)) static int mtk_cqdma_probe(struct platform_device *pdev)
{
 struct mtk_cqdma_device *cqdma;
 struct mtk_cqdma_vchan *vc;
 struct dma_device *dd;
 struct resource *res;
 int err;
 u32 i;

 cqdma = devm_kzalloc(&pdev->dev, sizeof(*cqdma), GFP_KERNEL);
 if (!cqdma)
  return -ENOMEM;

 dd = &cqdma->ddev;

 cqdma->clk = devm_clk_get(&pdev->dev, "cqdma");
 if (IS_ERR(cqdma->clk)) {
  dev_err(&pdev->dev, "No clock for %s\n",
   dev_name(&pdev->dev));
  return PTR_ERR(cqdma->clk);
 }

 dma_cap_set(DMA_MEMCPY, dd->cap_mask);

 dd->copy_align = MTK_CQDMA_ALIGN_SIZE;
 dd->device_alloc_chan_resources = mtk_cqdma_alloc_chan_resources;
 dd->device_free_chan_resources = mtk_cqdma_free_chan_resources;
 dd->device_tx_status = mtk_cqdma_tx_status;
 dd->device_issue_pending = mtk_cqdma_issue_pending;
 dd->device_prep_dma_memcpy = mtk_cqdma_prep_dma_memcpy;
 dd->device_terminate_all = mtk_cqdma_terminate_all;
 dd->src_addr_widths = MTK_CQDMA_DMA_BUSWIDTHS;
 dd->dst_addr_widths = MTK_CQDMA_DMA_BUSWIDTHS;
 dd->directions = BIT(DMA_MEM_TO_MEM);
 dd->residue_granularity = DMA_RESIDUE_GRANULARITY_SEGMENT;
 dd->dev = &pdev->dev;
 INIT_LIST_HEAD(&dd->channels);

 if (pdev->dev.of_node && of_property_read_u32(pdev->dev.of_node,
            "dma-requests",
            &cqdma->dma_requests)) {
  dev_info(&pdev->dev,
    "Using %u as missing dma-requests property\n",
    MTK_CQDMA_NR_VCHANS);

  cqdma->dma_requests = MTK_CQDMA_NR_VCHANS;
 }

 if (pdev->dev.of_node && of_property_read_u32(pdev->dev.of_node,
            "dma-channels",
            &cqdma->dma_channels)) {
  dev_info(&pdev->dev,
    "Using %u as missing dma-channels property\n",
    MTK_CQDMA_NR_PCHANS);

  cqdma->dma_channels = MTK_CQDMA_NR_PCHANS;
 }

 cqdma->pc = devm_kcalloc(&pdev->dev, cqdma->dma_channels,
     sizeof(*cqdma->pc), GFP_KERNEL);
 if (!cqdma->pc)
  return -ENOMEM;


 for (i = 0; i < cqdma->dma_channels; ++i) {
  cqdma->pc[i] = devm_kcalloc(&pdev->dev, 1,
         sizeof(**cqdma->pc), GFP_KERNEL);
  if (!cqdma->pc[i])
   return -ENOMEM;

  INIT_LIST_HEAD(&cqdma->pc[i]->queue);
  spin_lock_init(&cqdma->pc[i]->lock);
  refcount_set(&cqdma->pc[i]->refcnt, 0);

  res = platform_get_resource(pdev, IORESOURCE_MEM, i);
  if (!res) {
   dev_err(&pdev->dev, "No mem resource for %s\n",
    dev_name(&pdev->dev));
   return -EINVAL;
  }

  cqdma->pc[i]->base = devm_ioremap_resource(&pdev->dev, res);
  if (IS_ERR(cqdma->pc[i]->base))
   return PTR_ERR(cqdma->pc[i]->base);


  res = platform_get_resource(pdev, IORESOURCE_IRQ, i);
  if (!res) {
   dev_err(&pdev->dev, "No irq resource for %s\n",
    dev_name(&pdev->dev));
   return -EINVAL;
  }
  cqdma->pc[i]->irq = res->start;

  err = devm_request_irq(&pdev->dev, cqdma->pc[i]->irq,
           mtk_cqdma_irq, 0, dev_name(&pdev->dev),
           cqdma);
  if (err) {
   dev_err(&pdev->dev,
    "request_irq failed with err %d\n", err);
   return -EINVAL;
  }
 }


 cqdma->vc = devm_kcalloc(&pdev->dev, cqdma->dma_requests,
     sizeof(*cqdma->vc), GFP_KERNEL);
 if (!cqdma->vc)
  return -ENOMEM;

 for (i = 0; i < cqdma->dma_requests; i++) {
  vc = &cqdma->vc[i];
  vc->vc.desc_free = mtk_cqdma_vdesc_free;
  vchan_init(&vc->vc, dd);
  init_completion(&vc->issue_completion);
 }

 err = dma_async_device_register(dd);
 if (err)
  return err;

 err = of_dma_controller_register(pdev->dev.of_node,
      of_dma_xlate_by_chan_id, cqdma);
 if (err) {
  dev_err(&pdev->dev,
   "MediaTek CQDMA OF registration failed %d\n", err);
  goto err_unregister;
 }

 err = mtk_cqdma_hw_init(cqdma);
 if (err) {
  dev_err(&pdev->dev,
   "MediaTek CQDMA HW initialization failed %d\n", err);
  goto err_unregister;
 }

 platform_set_drvdata(pdev, cqdma);


 for (i = 0; i < cqdma->dma_channels; ++i)
  tasklet_init(&cqdma->pc[i]->tasklet, mtk_cqdma_tasklet_cb,
        (unsigned long)cqdma->pc[i]);

 dev_info(&pdev->dev, "MediaTek CQDMA driver registered\n");

 return 0;

err_unregister:
 dma_async_device_unregister(dd);

 return err;
}
