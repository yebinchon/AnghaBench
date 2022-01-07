
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dma_device {int chancnt; int channels; int dev; } ;
struct hidma_dev {struct dma_device ddev; } ;
struct TYPE_2__ {int device_node; struct dma_device* device; } ;
struct hidma_chan {TYPE_1__ chan; int lock; int queued; int completed; int active; int prepared; int free; struct hidma_dev* dmadev; int dma_sig; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct hidma_chan* devm_kzalloc (int ,int,int ) ;
 int dma_cookie_init (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int hidma_chan_init(struct hidma_dev *dmadev, u32 dma_sig)
{
 struct hidma_chan *mchan;
 struct dma_device *ddev;

 mchan = devm_kzalloc(dmadev->ddev.dev, sizeof(*mchan), GFP_KERNEL);
 if (!mchan)
  return -ENOMEM;

 ddev = &dmadev->ddev;
 mchan->dma_sig = dma_sig;
 mchan->dmadev = dmadev;
 mchan->chan.device = ddev;
 dma_cookie_init(&mchan->chan);

 INIT_LIST_HEAD(&mchan->free);
 INIT_LIST_HEAD(&mchan->prepared);
 INIT_LIST_HEAD(&mchan->active);
 INIT_LIST_HEAD(&mchan->completed);
 INIT_LIST_HEAD(&mchan->queued);

 spin_lock_init(&mchan->lock);
 list_add_tail(&mchan->chan.device_node, &ddev->channels);
 dmadev->ddev.chancnt++;
 return 0;
}
