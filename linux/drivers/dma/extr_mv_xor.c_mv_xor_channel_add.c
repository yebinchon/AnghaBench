
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct mv_xor_device {scalar_t__ xor_type; int xor_high_base; int xor_base; } ;
struct TYPE_2__ {int device_node; struct dma_device* device; } ;
struct dma_device {int max_xor; int cap_mask; int channels; int device_prep_dma_xor; int device_prep_dma_memcpy; int device_prep_dma_interrupt; int device_issue_pending; int device_tx_status; int device_free_chan_resources; int device_alloc_chan_resources; int * dev; } ;
struct mv_xor_chan {int idx; int irq; scalar_t__ op_in_desc; int dma_desc_pool; int dma_desc_pool_virt; TYPE_1__ dmachan; int allocated_slots; int free_slots; int completed_slots; int chain; int lock; int irq_tasklet; int mmr_high_base; int mmr_base; int dummy_dst; void* dummy_dst_addr; int dummy_src; void* dummy_src_addr; struct mv_xor_device* xordev; struct dma_device dmadev; } ;
typedef int dma_cap_mask_t ;


 int DMA_FROM_DEVICE ;
 int DMA_INTERRUPT ;
 int DMA_MEMCPY ;
 int DMA_TO_DEVICE ;
 int DMA_XOR ;
 int ENOMEM ;
 struct mv_xor_chan* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MV_XOR_MIN_BYTE_COUNT ;
 int MV_XOR_POOL_SIZE ;
 scalar_t__ XOR_MODE_IN_DESC ;
 scalar_t__ XOR_MODE_IN_REG ;
 int XOR_OPERATION_MODE_IN_DESC ;
 int XOR_OPERATION_MODE_XOR ;
 scalar_t__ XOR_ORION ;
 int dev_dbg (int *,char*,int) ;
 int dev_info (int *,char*,char*,char*,char*,char*) ;
 int dev_name (int *) ;
 struct mv_xor_chan* devm_kzalloc (int *,int,int ) ;
 int dma_alloc_wc (int *,int ,int *,int ) ;
 int dma_async_device_register (struct dma_device*) ;
 int dma_cookie_init (TYPE_1__*) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 scalar_t__ dma_has_cap (int ,int ) ;
 void* dma_map_single (int *,int ,int ,int ) ;
 int free_irq (int,struct mv_xor_chan*) ;
 int list_add_tail (int *,int *) ;
 int mv_chan_clear_err_status (struct mv_xor_chan*) ;
 int mv_chan_memcpy_self_test (struct mv_xor_chan*) ;
 int mv_chan_set_mode (struct mv_xor_chan*,int ) ;
 int mv_chan_unmask_interrupts (struct mv_xor_chan*) ;
 int mv_chan_xor_self_test (struct mv_xor_chan*) ;
 int mv_xor_alloc_chan_resources ;
 int mv_xor_free_chan_resources ;
 int mv_xor_interrupt_handler ;
 int mv_xor_issue_pending ;
 int mv_xor_prep_dma_interrupt ;
 int mv_xor_prep_dma_memcpy ;
 int mv_xor_prep_dma_xor ;
 int mv_xor_status ;
 int mv_xor_tasklet ;
 int request_irq (int,int ,int ,int ,struct mv_xor_chan*) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static struct mv_xor_chan *
mv_xor_channel_add(struct mv_xor_device *xordev,
     struct platform_device *pdev,
     int idx, dma_cap_mask_t cap_mask, int irq)
{
 int ret = 0;
 struct mv_xor_chan *mv_chan;
 struct dma_device *dma_dev;

 mv_chan = devm_kzalloc(&pdev->dev, sizeof(*mv_chan), GFP_KERNEL);
 if (!mv_chan)
  return ERR_PTR(-ENOMEM);

 mv_chan->idx = idx;
 mv_chan->irq = irq;
 if (xordev->xor_type == XOR_ORION)
  mv_chan->op_in_desc = XOR_MODE_IN_REG;
 else
  mv_chan->op_in_desc = XOR_MODE_IN_DESC;

 dma_dev = &mv_chan->dmadev;
 dma_dev->dev = &pdev->dev;
 mv_chan->xordev = xordev;






 mv_chan->dummy_src_addr = dma_map_single(dma_dev->dev,
  mv_chan->dummy_src, MV_XOR_MIN_BYTE_COUNT, DMA_FROM_DEVICE);
 mv_chan->dummy_dst_addr = dma_map_single(dma_dev->dev,
  mv_chan->dummy_dst, MV_XOR_MIN_BYTE_COUNT, DMA_TO_DEVICE);





 mv_chan->dma_desc_pool_virt =
   dma_alloc_wc(&pdev->dev, MV_XOR_POOL_SIZE, &mv_chan->dma_desc_pool,
         GFP_KERNEL);
 if (!mv_chan->dma_desc_pool_virt)
  return ERR_PTR(-ENOMEM);


 dma_dev->cap_mask = cap_mask;

 INIT_LIST_HEAD(&dma_dev->channels);


 dma_dev->device_alloc_chan_resources = mv_xor_alloc_chan_resources;
 dma_dev->device_free_chan_resources = mv_xor_free_chan_resources;
 dma_dev->device_tx_status = mv_xor_status;
 dma_dev->device_issue_pending = mv_xor_issue_pending;


 if (dma_has_cap(DMA_INTERRUPT, dma_dev->cap_mask))
  dma_dev->device_prep_dma_interrupt = mv_xor_prep_dma_interrupt;
 if (dma_has_cap(DMA_MEMCPY, dma_dev->cap_mask))
  dma_dev->device_prep_dma_memcpy = mv_xor_prep_dma_memcpy;
 if (dma_has_cap(DMA_XOR, dma_dev->cap_mask)) {
  dma_dev->max_xor = 8;
  dma_dev->device_prep_dma_xor = mv_xor_prep_dma_xor;
 }

 mv_chan->mmr_base = xordev->xor_base;
 mv_chan->mmr_high_base = xordev->xor_high_base;
 tasklet_init(&mv_chan->irq_tasklet, mv_xor_tasklet, (unsigned long)
       mv_chan);


 mv_chan_clear_err_status(mv_chan);

 ret = request_irq(mv_chan->irq, mv_xor_interrupt_handler,
     0, dev_name(&pdev->dev), mv_chan);
 if (ret)
  goto err_free_dma;

 mv_chan_unmask_interrupts(mv_chan);

 if (mv_chan->op_in_desc == XOR_MODE_IN_DESC)
  mv_chan_set_mode(mv_chan, XOR_OPERATION_MODE_IN_DESC);
 else
  mv_chan_set_mode(mv_chan, XOR_OPERATION_MODE_XOR);

 spin_lock_init(&mv_chan->lock);
 INIT_LIST_HEAD(&mv_chan->chain);
 INIT_LIST_HEAD(&mv_chan->completed_slots);
 INIT_LIST_HEAD(&mv_chan->free_slots);
 INIT_LIST_HEAD(&mv_chan->allocated_slots);
 mv_chan->dmachan.device = dma_dev;
 dma_cookie_init(&mv_chan->dmachan);

 list_add_tail(&mv_chan->dmachan.device_node, &dma_dev->channels);

 if (dma_has_cap(DMA_MEMCPY, dma_dev->cap_mask)) {
  ret = mv_chan_memcpy_self_test(mv_chan);
  dev_dbg(&pdev->dev, "memcpy self test returned %d\n", ret);
  if (ret)
   goto err_free_irq;
 }

 if (dma_has_cap(DMA_XOR, dma_dev->cap_mask)) {
  ret = mv_chan_xor_self_test(mv_chan);
  dev_dbg(&pdev->dev, "xor self test returned %d\n", ret);
  if (ret)
   goto err_free_irq;
 }

 dev_info(&pdev->dev, "Marvell XOR (%s): ( %s%s%s)\n",
   mv_chan->op_in_desc ? "Descriptor Mode" : "Registers Mode",
   dma_has_cap(DMA_XOR, dma_dev->cap_mask) ? "xor " : "",
   dma_has_cap(DMA_MEMCPY, dma_dev->cap_mask) ? "cpy " : "",
   dma_has_cap(DMA_INTERRUPT, dma_dev->cap_mask) ? "intr " : "");

 ret = dma_async_device_register(dma_dev);
 if (ret)
  goto err_free_irq;

 return mv_chan;

err_free_irq:
 free_irq(mv_chan->irq, mv_chan);
err_free_dma:
 dma_free_coherent(&pdev->dev, MV_XOR_POOL_SIZE,
     mv_chan->dma_desc_pool_virt, mv_chan->dma_desc_pool);
 return ERR_PTR(ret);
}
