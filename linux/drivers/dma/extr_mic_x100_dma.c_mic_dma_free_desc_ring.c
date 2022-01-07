
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mic_dma_chan {int * desc_ring; int desc_ring_micpa; int tx_array; } ;
struct TYPE_2__ {int dev; } ;


 int ALIGN (int,int ) ;
 int DMA_BIDIRECTIONAL ;
 int MIC_DMA_ALIGN_BYTES ;
 int MIC_DMA_DESC_RX_SIZE ;
 int dma_unmap_single (int *,int ,int,int ) ;
 int kfree (int *) ;
 TYPE_1__* to_mbus_device (struct mic_dma_chan*) ;
 int vfree (int ) ;

__attribute__((used)) static void mic_dma_free_desc_ring(struct mic_dma_chan *ch)
{
 u64 desc_ring_size = MIC_DMA_DESC_RX_SIZE * sizeof(*ch->desc_ring);

 vfree(ch->tx_array);
 desc_ring_size = ALIGN(desc_ring_size, MIC_DMA_ALIGN_BYTES);
 dma_unmap_single(&to_mbus_device(ch)->dev, ch->desc_ring_micpa,
    desc_ring_size, DMA_BIDIRECTIONAL);
 kfree(ch->desc_ring);
 ch->desc_ring = ((void*)0);
}
