
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct txx9dmac_dev {int descsize; } ;
struct TYPE_2__ {int flags; int phys; } ;
struct txx9dmac_desc {TYPE_1__ txd; int desc_node; } ;
struct list_head {int dummy; } ;
struct txx9dmac_chan {int chan; struct list_head queue; struct txx9dmac_dev* ddev; } ;


 int BUG_ON (int) ;
 int DMA_PREP_INTERRUPT ;
 int DMA_TO_DEVICE ;
 int chan2parent (int *) ;
 int desc_write_CHAR (struct txx9dmac_chan*,struct txx9dmac_desc*,int ) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int list_empty (struct list_head*) ;
 int list_move_tail (int *,struct list_head*) ;
 int txx9dmac_chan_INTENT (struct txx9dmac_chan*) ;
 struct txx9dmac_desc* txx9dmac_first_queued (struct txx9dmac_chan*) ;
 struct txx9dmac_desc* txx9dmac_last_child (struct txx9dmac_desc*) ;

__attribute__((used)) static void txx9dmac_dequeue(struct txx9dmac_chan *dc, struct list_head *list)
{
 struct txx9dmac_dev *ddev = dc->ddev;
 struct txx9dmac_desc *desc;
 struct txx9dmac_desc *prev = ((void*)0);

 BUG_ON(!list_empty(list));
 do {
  desc = txx9dmac_first_queued(dc);
  if (prev) {
   desc_write_CHAR(dc, prev, desc->txd.phys);
   dma_sync_single_for_device(chan2parent(&dc->chan),
    prev->txd.phys, ddev->descsize,
    DMA_TO_DEVICE);
  }
  prev = txx9dmac_last_child(desc);
  list_move_tail(&desc->desc_node, list);

  if ((desc->txd.flags & DMA_PREP_INTERRUPT) &&
      !txx9dmac_chan_INTENT(dc))
   break;
 } while (!list_empty(&dc->queue));
}
