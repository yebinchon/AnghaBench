
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_dma_chan {int status_dest; int status_dest_micpa; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int L1_CACHE_BYTES ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (int ) ;
 TYPE_1__* to_mbus_device (struct mic_dma_chan*) ;

__attribute__((used)) static void mic_dma_free_status_dest(struct mic_dma_chan *ch)
{
 dma_unmap_single(&to_mbus_device(ch)->dev, ch->status_dest_micpa,
    L1_CACHE_BYTES, DMA_BIDIRECTIONAL);
 kfree(ch->status_dest);
}
