
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timb_dma_platform_data_channel {int rx; int bytes_per_line; int descriptor_elements; int descriptors; } ;
struct timb_dma_platform_data {int nr_channels; struct timb_dma_platform_data_channel* channels; } ;
struct TYPE_3__ {int device_node; TYPE_2__* device; } ;
struct timb_dma_chan {TYPE_1__ chan; scalar_t__ membase; int direction; int bytes_per_line; int desc_elems; int descs; int free_list; int queue; int active_list; int lock; } ;
struct TYPE_4__ {int channels; int * dev; int device_terminate_all; int device_prep_slave_sg; int cap_mask; int device_issue_pending; int device_tx_status; int device_free_chan_resources; int device_alloc_chan_resources; } ;
struct timb_dma {scalar_t__ membase; int tasklet; TYPE_2__ dma; struct timb_dma_chan* channels; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PRIVATE ;
 int DMA_SLAVE ;
 int DRIVER_NAME ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int TIMBDMA_32BIT_ADDR ;
 scalar_t__ TIMBDMA_ACR ;
 scalar_t__ TIMBDMA_IER ;
 int TIMBDMA_INSTANCE_OFFSET ;
 scalar_t__ TIMBDMA_INSTANCE_TX_OFFSET ;
 scalar_t__ TIMBDMA_ISR ;
 int channels ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 struct timb_dma_platform_data* dev_get_platdata (int *) ;
 int dma_async_device_register (TYPE_2__*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cookie_init (TYPE_1__*) ;
 int free_irq (int,struct timb_dma*) ;
 scalar_t__ ioremap (int ,int ) ;
 int iounmap (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int kfree (struct timb_dma*) ;
 struct timb_dma* kzalloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct timb_dma*) ;
 int release_mem_region (int ,int ) ;
 int request_irq (int,int ,int ,int ,struct timb_dma*) ;
 int request_mem_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int struct_size (struct timb_dma*,int ,int) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tasklet_kill (int *) ;
 int td_alloc_chan_resources ;
 int td_free_chan_resources ;
 int td_irq ;
 int td_issue_pending ;
 int td_prep_slave_sg ;
 int td_tasklet ;
 int td_terminate_all ;
 int td_tx_status ;

__attribute__((used)) static int td_probe(struct platform_device *pdev)
{
 struct timb_dma_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct timb_dma *td;
 struct resource *iomem;
 int irq;
 int err;
 int i;

 if (!pdata) {
  dev_err(&pdev->dev, "No platform data\n");
  return -EINVAL;
 }

 iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!iomem)
  return -EINVAL;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 if (!request_mem_region(iomem->start, resource_size(iomem),
  DRIVER_NAME))
  return -EBUSY;

 td = kzalloc(struct_size(td, channels, pdata->nr_channels),
        GFP_KERNEL);
 if (!td) {
  err = -ENOMEM;
  goto err_release_region;
 }

 dev_dbg(&pdev->dev, "Allocated TD: %p\n", td);

 td->membase = ioremap(iomem->start, resource_size(iomem));
 if (!td->membase) {
  dev_err(&pdev->dev, "Failed to remap I/O memory\n");
  err = -ENOMEM;
  goto err_free_mem;
 }


 iowrite32(TIMBDMA_32BIT_ADDR, td->membase + TIMBDMA_ACR);


 iowrite32(0x0, td->membase + TIMBDMA_IER);
 iowrite32(0xFFFFFFFF, td->membase + TIMBDMA_ISR);

 tasklet_init(&td->tasklet, td_tasklet, (unsigned long)td);

 err = request_irq(irq, td_irq, IRQF_SHARED, DRIVER_NAME, td);
 if (err) {
  dev_err(&pdev->dev, "Failed to request IRQ\n");
  goto err_tasklet_kill;
 }

 td->dma.device_alloc_chan_resources = td_alloc_chan_resources;
 td->dma.device_free_chan_resources = td_free_chan_resources;
 td->dma.device_tx_status = td_tx_status;
 td->dma.device_issue_pending = td_issue_pending;

 dma_cap_set(DMA_SLAVE, td->dma.cap_mask);
 dma_cap_set(DMA_PRIVATE, td->dma.cap_mask);
 td->dma.device_prep_slave_sg = td_prep_slave_sg;
 td->dma.device_terminate_all = td_terminate_all;

 td->dma.dev = &pdev->dev;

 INIT_LIST_HEAD(&td->dma.channels);

 for (i = 0; i < pdata->nr_channels; i++) {
  struct timb_dma_chan *td_chan = &td->channels[i];
  struct timb_dma_platform_data_channel *pchan =
   pdata->channels + i;


  if ((i % 2) == pchan->rx) {
   dev_err(&pdev->dev, "Wrong channel configuration\n");
   err = -EINVAL;
   goto err_free_irq;
  }

  td_chan->chan.device = &td->dma;
  dma_cookie_init(&td_chan->chan);
  spin_lock_init(&td_chan->lock);
  INIT_LIST_HEAD(&td_chan->active_list);
  INIT_LIST_HEAD(&td_chan->queue);
  INIT_LIST_HEAD(&td_chan->free_list);

  td_chan->descs = pchan->descriptors;
  td_chan->desc_elems = pchan->descriptor_elements;
  td_chan->bytes_per_line = pchan->bytes_per_line;
  td_chan->direction = pchan->rx ? DMA_DEV_TO_MEM :
   DMA_MEM_TO_DEV;

  td_chan->membase = td->membase +
   (i / 2) * TIMBDMA_INSTANCE_OFFSET +
   (pchan->rx ? 0 : TIMBDMA_INSTANCE_TX_OFFSET);

  dev_dbg(&pdev->dev, "Chan: %d, membase: %p\n",
   i, td_chan->membase);

  list_add_tail(&td_chan->chan.device_node, &td->dma.channels);
 }

 err = dma_async_device_register(&td->dma);
 if (err) {
  dev_err(&pdev->dev, "Failed to register async device\n");
  goto err_free_irq;
 }

 platform_set_drvdata(pdev, td);

 dev_dbg(&pdev->dev, "Probe result: %d\n", err);
 return err;

err_free_irq:
 free_irq(irq, td);
err_tasklet_kill:
 tasklet_kill(&td->tasklet);
 iounmap(td->membase);
err_free_mem:
 kfree(td);
err_release_region:
 release_mem_region(iomem->start, resource_size(iomem));

 return err;

}
