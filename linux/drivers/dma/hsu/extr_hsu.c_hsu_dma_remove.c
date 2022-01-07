
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsu_dma_chip {struct hsu_dma* hsu; } ;
struct TYPE_2__ {int task; } ;
struct hsu_dma_chan {TYPE_1__ vchan; } ;
struct hsu_dma {unsigned short nr_channels; struct hsu_dma_chan* chan; int dma; } ;


 int dma_async_device_unregister (int *) ;
 int tasklet_kill (int *) ;

int hsu_dma_remove(struct hsu_dma_chip *chip)
{
 struct hsu_dma *hsu = chip->hsu;
 unsigned short i;

 dma_async_device_unregister(&hsu->dma);

 for (i = 0; i < hsu->nr_channels; i++) {
  struct hsu_dma_chan *hsuc = &hsu->chan[i];

  tasklet_kill(&hsuc->vchan.task);
 }

 return 0;
}
