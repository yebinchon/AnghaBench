
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phys; int chan; } ;
struct timb_dma_desc {struct timb_dma_desc* desc_list; int desc_list_len; TYPE_1__ txd; } ;


 int DMA_TO_DEVICE ;
 int chan2dev (int ) ;
 int chan2dmadev (int ) ;
 int dev_dbg (int ,char*,struct timb_dma_desc*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (struct timb_dma_desc*) ;

__attribute__((used)) static void td_free_desc(struct timb_dma_desc *td_desc)
{
 dev_dbg(chan2dev(td_desc->txd.chan), "Freeing desc: %p\n", td_desc);
 dma_unmap_single(chan2dmadev(td_desc->txd.chan), td_desc->txd.phys,
  td_desc->desc_list_len, DMA_TO_DEVICE);

 kfree(td_desc->desc_list);
 kfree(td_desc);
}
