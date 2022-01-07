
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channels; int dev; } ;
struct shdma_dev {struct shdma_chan** schan; TYPE_1__ dma_dev; } ;
struct TYPE_4__ {int device_node; TYPE_1__* device; } ;
struct shdma_chan {int id; TYPE_2__ dma_chan; int ld_free; int ld_queue; int chan_lock; scalar_t__ max_xfer_len; int dev; int pm_state; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ PAGE_SIZE ;
 int SHDMA_PM_ESTABLISHED ;
 int dma_cookie_init (TYPE_2__*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;

void shdma_chan_probe(struct shdma_dev *sdev,
      struct shdma_chan *schan, int id)
{
 schan->pm_state = SHDMA_PM_ESTABLISHED;


 schan->dma_chan.device = &sdev->dma_dev;
 dma_cookie_init(&schan->dma_chan);

 schan->dev = sdev->dma_dev.dev;
 schan->id = id;

 if (!schan->max_xfer_len)
  schan->max_xfer_len = PAGE_SIZE;

 spin_lock_init(&schan->chan_lock);


 INIT_LIST_HEAD(&schan->ld_queue);
 INIT_LIST_HEAD(&schan->ld_free);


 list_add_tail(&schan->dma_chan.device_node,
   &sdev->dma_dev.channels);
 sdev->schan[id] = schan;
}
