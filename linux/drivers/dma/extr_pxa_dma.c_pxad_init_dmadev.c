
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int device_terminate_all; int device_synchronize; int device_config; int device_issue_pending; int device_tx_status; int device_free_chan_resources; int device_alloc_chan_resources; int channels; } ;
struct pxad_device {unsigned int nr_chans; unsigned int nr_requestors; TYPE_2__ slave; } ;
struct TYPE_6__ {int desc_free; } ;
struct pxad_chan {int wq_state; TYPE_1__ vc; int prio; int drcmr; } ;
struct TYPE_8__ {scalar_t__ coherent_dma_mask; } ;
struct platform_device {TYPE_4__ dev; } ;


 scalar_t__ DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PXAD_PRIO_LOWEST ;
 int U32_MAX ;
 struct pxad_chan* devm_kzalloc (TYPE_4__*,int,int ) ;
 int dma_set_mask (TYPE_4__*,scalar_t__) ;
 int dmaenginem_async_device_register (TYPE_2__*) ;
 int init_waitqueue_head (int *) ;
 int pxad_alloc_chan_resources ;
 int pxad_config ;
 int pxad_free_chan_resources ;
 int pxad_free_desc ;
 int pxad_init_phys (struct platform_device*,struct pxad_device*,unsigned int) ;
 int pxad_issue_pending ;
 int pxad_synchronize ;
 int pxad_terminate_all ;
 int pxad_tx_status ;
 int vchan_init (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int pxad_init_dmadev(struct platform_device *op,
       struct pxad_device *pdev,
       unsigned int nr_phy_chans,
       unsigned int nr_requestors)
{
 int ret;
 unsigned int i;
 struct pxad_chan *c;

 pdev->nr_chans = nr_phy_chans;
 pdev->nr_requestors = nr_requestors;
 INIT_LIST_HEAD(&pdev->slave.channels);
 pdev->slave.device_alloc_chan_resources = pxad_alloc_chan_resources;
 pdev->slave.device_free_chan_resources = pxad_free_chan_resources;
 pdev->slave.device_tx_status = pxad_tx_status;
 pdev->slave.device_issue_pending = pxad_issue_pending;
 pdev->slave.device_config = pxad_config;
 pdev->slave.device_synchronize = pxad_synchronize;
 pdev->slave.device_terminate_all = pxad_terminate_all;

 if (op->dev.coherent_dma_mask)
  dma_set_mask(&op->dev, op->dev.coherent_dma_mask);
 else
  dma_set_mask(&op->dev, DMA_BIT_MASK(32));

 ret = pxad_init_phys(op, pdev, nr_phy_chans);
 if (ret)
  return ret;

 for (i = 0; i < nr_phy_chans; i++) {
  c = devm_kzalloc(&op->dev, sizeof(*c), GFP_KERNEL);
  if (!c)
   return -ENOMEM;

  c->drcmr = U32_MAX;
  c->prio = PXAD_PRIO_LOWEST;
  c->vc.desc_free = pxad_free_desc;
  vchan_init(&c->vc, &pdev->slave);
  init_waitqueue_head(&c->wq_state);
 }

 return dmaenginem_async_device_register(&pdev->slave);
}
