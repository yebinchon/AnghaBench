
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct hidma_dev {TYPE_2__ ddev; int lldev; } ;
struct TYPE_3__ {int device; } ;
struct hidma_chan {TYPE_1__ chan; } ;
struct dma_chan {int dummy; } ;


 int hidma_ll_setup (int ) ;
 int hidma_terminate_channel (struct dma_chan*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct hidma_chan* to_hidma_chan (struct dma_chan*) ;
 struct hidma_dev* to_hidma_dev (int ) ;

__attribute__((used)) static int hidma_terminate_all(struct dma_chan *chan)
{
 struct hidma_chan *mchan = to_hidma_chan(chan);
 struct hidma_dev *dmadev = to_hidma_dev(mchan->chan.device);
 int rc;

 rc = hidma_terminate_channel(chan);
 if (rc)
  return rc;


 pm_runtime_get_sync(dmadev->ddev.dev);
 rc = hidma_ll_setup(dmadev->lldev);
 pm_runtime_mark_last_busy(dmadev->ddev.dev);
 pm_runtime_put_autosuspend(dmadev->ddev.dev);
 return rc;
}
