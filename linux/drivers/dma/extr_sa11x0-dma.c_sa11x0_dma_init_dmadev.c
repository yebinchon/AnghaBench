
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int desc_free; } ;
struct sa11x0_dma_chan {TYPE_1__ vc; int node; int name; int ddar; int status; } ;
struct dma_device {int device_issue_pending; int device_tx_status; int device_terminate_all; int device_resume; int device_pause; int device_config; int device_free_chan_resources; struct device* dev; int channels; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int name; int ddar; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 int DMA_IN_PROGRESS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_2__* chan_desc ;
 int dev_err (struct device*,char*,unsigned int) ;
 int dma_async_device_register (struct dma_device*) ;
 struct sa11x0_dma_chan* kzalloc (int,int ) ;
 int sa11x0_dma_device_config ;
 int sa11x0_dma_device_pause ;
 int sa11x0_dma_device_resume ;
 int sa11x0_dma_device_terminate_all ;
 int sa11x0_dma_free_chan_resources ;
 int sa11x0_dma_free_desc ;
 int sa11x0_dma_issue_pending ;
 int sa11x0_dma_tx_status ;
 int vchan_init (TYPE_1__*,struct dma_device*) ;

__attribute__((used)) static int sa11x0_dma_init_dmadev(struct dma_device *dmadev,
 struct device *dev)
{
 unsigned i;

 INIT_LIST_HEAD(&dmadev->channels);
 dmadev->dev = dev;
 dmadev->device_free_chan_resources = sa11x0_dma_free_chan_resources;
 dmadev->device_config = sa11x0_dma_device_config;
 dmadev->device_pause = sa11x0_dma_device_pause;
 dmadev->device_resume = sa11x0_dma_device_resume;
 dmadev->device_terminate_all = sa11x0_dma_device_terminate_all;
 dmadev->device_tx_status = sa11x0_dma_tx_status;
 dmadev->device_issue_pending = sa11x0_dma_issue_pending;

 for (i = 0; i < ARRAY_SIZE(chan_desc); i++) {
  struct sa11x0_dma_chan *c;

  c = kzalloc(sizeof(*c), GFP_KERNEL);
  if (!c) {
   dev_err(dev, "no memory for channel %u\n", i);
   return -ENOMEM;
  }

  c->status = DMA_IN_PROGRESS;
  c->ddar = chan_desc[i].ddar;
  c->name = chan_desc[i].name;
  INIT_LIST_HEAD(&c->node);

  c->vc.desc_free = sa11x0_dma_free_desc;
  vchan_init(&c->vc, dmadev);
 }

 return dma_async_device_register(dmadev);
}
