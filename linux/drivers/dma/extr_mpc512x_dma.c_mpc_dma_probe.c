
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
typedef int u8 ;
struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mpc_dma_tcd {int dummy; } ;
struct TYPE_3__ {int device_node; struct dma_device* device; } ;
struct mpc_dma_chan {TYPE_1__ chan; int lock; int completed; int active; int queued; int prepared; int free; } ;
struct dma_device {int channels; int cap_mask; int device_terminate_all; int device_config; int device_prep_slave_sg; int device_prep_dma_memcpy; int device_tx_status; int device_issue_pending; int device_free_chan_resources; int device_alloc_chan_resources; struct device* dev; } ;
struct mpc_dma {int is_mpc8308; void* irq; void* irq2; TYPE_2__* regs; int tasklet; struct mpc_dma_chan* channels; struct dma_device dma; int error_status_lock; struct mpc_dma_tcd* tcd; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int dmailsa; int dmaihsa; int dmaerrl; int dmaerrh; int dmaintl; int dmainth; int dmaeeil; int dmaeeih; int dmaerql; int dmaerqh; int dmacr; int dmagpor; } ;


 int DMA_MEMCPY ;
 int DMA_SLAVE ;
 int DRV_NAME ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MPC512x_DMACHAN_MAX ;
 int MPC8308_DMACHAN_MAX ;
 int MPC_DMA_DMACR_EDCG ;
 int MPC_DMA_DMACR_ERCA ;
 int MPC_DMA_DMACR_ERGA ;
 int MPC_DMA_DMAGPOR_SNOOP_ENABLE ;
 int MPC_DMA_TCD_OFFSET ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct mpc_dma*) ;
 int dev_warn (struct device*,char*) ;
 TYPE_2__* devm_ioremap (struct device*,int ,int ) ;
 struct mpc_dma* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_mem_region (struct device*,int ,int ,int ) ;
 int dma_async_device_register (struct dma_device*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cookie_init (TYPE_1__*) ;
 int free_irq (void*,struct mpc_dma*) ;
 int irq_dispose_mapping (void*) ;
 void* irq_of_parse_and_map (struct device_node*,int) ;
 int list_add_tail (int *,int *) ;
 int mpc_dma_alloc_chan_resources ;
 int mpc_dma_device_config ;
 int mpc_dma_device_terminate_all ;
 int mpc_dma_free_chan_resources ;
 int mpc_dma_irq ;
 int mpc_dma_issue_pending ;
 int mpc_dma_prep_memcpy ;
 int mpc_dma_prep_slave_sg ;
 int mpc_dma_tasklet ;
 int mpc_dma_tx_status ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int of_dma_controller_register (struct device_node*,int ,struct mpc_dma*) ;
 int of_dma_xlate_by_chan_id ;
 int out_be32 (int *,int) ;
 int request_irq (void*,int *,int ,int ,struct mpc_dma*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int mpc_dma_probe(struct platform_device *op)
{
 struct device_node *dn = op->dev.of_node;
 struct device *dev = &op->dev;
 struct dma_device *dma;
 struct mpc_dma *mdma;
 struct mpc_dma_chan *mchan;
 struct resource res;
 ulong regs_start, regs_size;
 int retval, i;
 u8 chancnt;

 mdma = devm_kzalloc(dev, sizeof(struct mpc_dma), GFP_KERNEL);
 if (!mdma) {
  retval = -ENOMEM;
  goto err;
 }

 mdma->irq = irq_of_parse_and_map(dn, 0);
 if (!mdma->irq) {
  dev_err(dev, "Error mapping IRQ!\n");
  retval = -EINVAL;
  goto err;
 }

 if (of_device_is_compatible(dn, "fsl,mpc8308-dma")) {
  mdma->is_mpc8308 = 1;
  mdma->irq2 = irq_of_parse_and_map(dn, 1);
  if (!mdma->irq2) {
   dev_err(dev, "Error mapping IRQ!\n");
   retval = -EINVAL;
   goto err_dispose1;
  }
 }

 retval = of_address_to_resource(dn, 0, &res);
 if (retval) {
  dev_err(dev, "Error parsing memory region!\n");
  goto err_dispose2;
 }

 regs_start = res.start;
 regs_size = resource_size(&res);

 if (!devm_request_mem_region(dev, regs_start, regs_size, DRV_NAME)) {
  dev_err(dev, "Error requesting memory region!\n");
  retval = -EBUSY;
  goto err_dispose2;
 }

 mdma->regs = devm_ioremap(dev, regs_start, regs_size);
 if (!mdma->regs) {
  dev_err(dev, "Error mapping memory region!\n");
  retval = -ENOMEM;
  goto err_dispose2;
 }

 mdma->tcd = (struct mpc_dma_tcd *)((u8 *)(mdma->regs)
       + MPC_DMA_TCD_OFFSET);

 retval = request_irq(mdma->irq, &mpc_dma_irq, 0, DRV_NAME, mdma);
 if (retval) {
  dev_err(dev, "Error requesting IRQ!\n");
  retval = -EINVAL;
  goto err_dispose2;
 }

 if (mdma->is_mpc8308) {
  retval = request_irq(mdma->irq2, &mpc_dma_irq, 0,
       DRV_NAME, mdma);
  if (retval) {
   dev_err(dev, "Error requesting IRQ2!\n");
   retval = -EINVAL;
   goto err_free1;
  }
 }

 spin_lock_init(&mdma->error_status_lock);

 dma = &mdma->dma;
 dma->dev = dev;
 dma->device_alloc_chan_resources = mpc_dma_alloc_chan_resources;
 dma->device_free_chan_resources = mpc_dma_free_chan_resources;
 dma->device_issue_pending = mpc_dma_issue_pending;
 dma->device_tx_status = mpc_dma_tx_status;
 dma->device_prep_dma_memcpy = mpc_dma_prep_memcpy;
 dma->device_prep_slave_sg = mpc_dma_prep_slave_sg;
 dma->device_config = mpc_dma_device_config;
 dma->device_terminate_all = mpc_dma_device_terminate_all;

 INIT_LIST_HEAD(&dma->channels);
 dma_cap_set(DMA_MEMCPY, dma->cap_mask);
 dma_cap_set(DMA_SLAVE, dma->cap_mask);

 if (mdma->is_mpc8308)
  chancnt = MPC8308_DMACHAN_MAX;
 else
  chancnt = MPC512x_DMACHAN_MAX;

 for (i = 0; i < chancnt; i++) {
  mchan = &mdma->channels[i];

  mchan->chan.device = dma;
  dma_cookie_init(&mchan->chan);

  INIT_LIST_HEAD(&mchan->free);
  INIT_LIST_HEAD(&mchan->prepared);
  INIT_LIST_HEAD(&mchan->queued);
  INIT_LIST_HEAD(&mchan->active);
  INIT_LIST_HEAD(&mchan->completed);

  spin_lock_init(&mchan->lock);
  list_add_tail(&mchan->chan.device_node, &dma->channels);
 }

 tasklet_init(&mdma->tasklet, mpc_dma_tasklet, (unsigned long)mdma);







 if (mdma->is_mpc8308) {

  out_be32(&mdma->regs->dmacr, MPC_DMA_DMACR_ERCA);


  out_be32(&mdma->regs->dmagpor, MPC_DMA_DMAGPOR_SNOOP_ENABLE);

  out_be32(&mdma->regs->dmaeeil, 0);


  out_be32(&mdma->regs->dmaintl, 0xFFFF);
  out_be32(&mdma->regs->dmaerrl, 0xFFFF);
 } else {
  out_be32(&mdma->regs->dmacr, MPC_DMA_DMACR_EDCG |
      MPC_DMA_DMACR_ERGA |
      MPC_DMA_DMACR_ERCA);


  out_be32(&mdma->regs->dmaerqh, 0);
  out_be32(&mdma->regs->dmaerql, 0);


  out_be32(&mdma->regs->dmaeeih, 0);
  out_be32(&mdma->regs->dmaeeil, 0);


  out_be32(&mdma->regs->dmainth, 0xFFFFFFFF);
  out_be32(&mdma->regs->dmaintl, 0xFFFFFFFF);
  out_be32(&mdma->regs->dmaerrh, 0xFFFFFFFF);
  out_be32(&mdma->regs->dmaerrl, 0xFFFFFFFF);


  out_be32(&mdma->regs->dmaihsa, 0);
  out_be32(&mdma->regs->dmailsa, 0);
 }


 dev_set_drvdata(dev, mdma);
 retval = dma_async_device_register(dma);
 if (retval)
  goto err_free2;


 if (dev->of_node) {
  retval = of_dma_controller_register(dev->of_node,
      of_dma_xlate_by_chan_id, mdma);
  if (retval)
   dev_warn(dev, "Could not register for OF lookup\n");
 }

 return 0;

err_free2:
 if (mdma->is_mpc8308)
  free_irq(mdma->irq2, mdma);
err_free1:
 free_irq(mdma->irq, mdma);
err_dispose2:
 if (mdma->is_mpc8308)
  irq_dispose_mapping(mdma->irq2);
err_dispose1:
 irq_dispose_mapping(mdma->irq);
err:
 return retval;
}
