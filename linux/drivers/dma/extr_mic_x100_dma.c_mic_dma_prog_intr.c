
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {size_t head; int status_dest_micpa; int * desc_ring; } ;


 int mic_dma_hw_ring_inc_head (struct mic_dma_chan*) ;
 int mic_dma_prep_status_desc (int *,int ,int ,int) ;

__attribute__((used)) static void mic_dma_prog_intr(struct mic_dma_chan *ch)
{
 mic_dma_prep_status_desc(&ch->desc_ring[ch->head], 0,
     ch->status_dest_micpa, 0);
 mic_dma_hw_ring_inc_head(ch);
 mic_dma_prep_status_desc(&ch->desc_ring[ch->head], 0,
     ch->status_dest_micpa, 1);
 mic_dma_hw_ring_inc_head(ch);
}
