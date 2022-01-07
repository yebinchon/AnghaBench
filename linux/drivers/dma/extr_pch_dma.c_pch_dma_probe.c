
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {unsigned int driver_data; } ;
struct pci_dev {int irq; int dev; } ;
struct pch_dma_regs {int * desc; } ;
struct pch_dma_desc {int dummy; } ;
struct TYPE_3__ {int device_node; TYPE_2__* device; } ;
struct pch_dma_chan {TYPE_1__ chan; int tasklet; int free_list; int queue; int active_list; int lock; int * membase; } ;
struct TYPE_4__ {int device_terminate_all; int device_prep_slave_sg; int device_issue_pending; int device_tx_status; int device_free_chan_resources; int device_alloc_chan_resources; int cap_mask; int channels; int * dev; } ;
struct pch_dma {struct pch_dma_regs* membase; int pool; TYPE_2__ dma; struct pch_dma_chan* channels; } ;


 int DMA_BIT_MASK (int) ;
 int DMA_PRIVATE ;
 int DMA_SLAVE ;
 int DRV_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int dev_err (int *,char*) ;
 int dma_async_device_register (TYPE_2__*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_cookie_init (TYPE_1__*) ;
 int dma_pool_create (char*,int *,int,int,int ) ;
 int dma_pool_destroy (int ) ;
 int free_irq (int ,struct pch_dma*) ;
 int kfree (struct pch_dma*) ;
 struct pch_dma* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 struct pch_dma_regs* pci_iomap (struct pci_dev*,int,int ) ;
 int pci_iounmap (struct pci_dev*,struct pch_dma_regs*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct pch_dma*) ;
 int pci_set_master (struct pci_dev*) ;
 int pd_alloc_chan_resources ;
 int pd_device_terminate_all ;
 int pd_free_chan_resources ;
 int pd_irq ;
 int pd_issue_pending ;
 int pd_prep_slave_sg ;
 int pd_tx_status ;
 int pdc_tasklet ;
 int request_irq (int ,int ,int ,int ,struct pch_dma*) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int pch_dma_probe(struct pci_dev *pdev,
       const struct pci_device_id *id)
{
 struct pch_dma *pd;
 struct pch_dma_regs *regs;
 unsigned int nr_channels;
 int err;
 int i;

 nr_channels = id->driver_data;
 pd = kzalloc(sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return -ENOMEM;

 pci_set_drvdata(pdev, pd);

 err = pci_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "Cannot enable PCI device\n");
  goto err_free_mem;
 }

 if (!(pci_resource_flags(pdev, 1) & IORESOURCE_MEM)) {
  dev_err(&pdev->dev, "Cannot find proper base address\n");
  err = -ENODEV;
  goto err_disable_pdev;
 }

 err = pci_request_regions(pdev, DRV_NAME);
 if (err) {
  dev_err(&pdev->dev, "Cannot obtain PCI resources\n");
  goto err_disable_pdev;
 }

 err = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
 if (err) {
  dev_err(&pdev->dev, "Cannot set proper DMA config\n");
  goto err_free_res;
 }

 regs = pd->membase = pci_iomap(pdev, 1, 0);
 if (!pd->membase) {
  dev_err(&pdev->dev, "Cannot map MMIO registers\n");
  err = -ENOMEM;
  goto err_free_res;
 }

 pci_set_master(pdev);

 err = request_irq(pdev->irq, pd_irq, IRQF_SHARED, DRV_NAME, pd);
 if (err) {
  dev_err(&pdev->dev, "Failed to request IRQ\n");
  goto err_iounmap;
 }

 pd->pool = dma_pool_create("pch_dma_desc_pool", &pdev->dev,
       sizeof(struct pch_dma_desc), 4, 0);
 if (!pd->pool) {
  dev_err(&pdev->dev, "Failed to alloc DMA descriptors\n");
  err = -ENOMEM;
  goto err_free_irq;
 }

 pd->dma.dev = &pdev->dev;

 INIT_LIST_HEAD(&pd->dma.channels);

 for (i = 0; i < nr_channels; i++) {
  struct pch_dma_chan *pd_chan = &pd->channels[i];

  pd_chan->chan.device = &pd->dma;
  dma_cookie_init(&pd_chan->chan);

  pd_chan->membase = &regs->desc[i];

  spin_lock_init(&pd_chan->lock);

  INIT_LIST_HEAD(&pd_chan->active_list);
  INIT_LIST_HEAD(&pd_chan->queue);
  INIT_LIST_HEAD(&pd_chan->free_list);

  tasklet_init(&pd_chan->tasklet, pdc_tasklet,
        (unsigned long)pd_chan);
  list_add_tail(&pd_chan->chan.device_node, &pd->dma.channels);
 }

 dma_cap_zero(pd->dma.cap_mask);
 dma_cap_set(DMA_PRIVATE, pd->dma.cap_mask);
 dma_cap_set(DMA_SLAVE, pd->dma.cap_mask);

 pd->dma.device_alloc_chan_resources = pd_alloc_chan_resources;
 pd->dma.device_free_chan_resources = pd_free_chan_resources;
 pd->dma.device_tx_status = pd_tx_status;
 pd->dma.device_issue_pending = pd_issue_pending;
 pd->dma.device_prep_slave_sg = pd_prep_slave_sg;
 pd->dma.device_terminate_all = pd_device_terminate_all;

 err = dma_async_device_register(&pd->dma);
 if (err) {
  dev_err(&pdev->dev, "Failed to register DMA device\n");
  goto err_free_pool;
 }

 return 0;

err_free_pool:
 dma_pool_destroy(pd->pool);
err_free_irq:
 free_irq(pdev->irq, pd);
err_iounmap:
 pci_iounmap(pdev, pd->membase);
err_free_res:
 pci_release_regions(pdev);
err_disable_pdev:
 pci_disable_device(pdev);
err_free_mem:
 kfree(pd);
 return err;
}
