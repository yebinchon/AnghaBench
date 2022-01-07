
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {scalar_t__ owner; scalar_t__ issued; int last_tail; int head; } ;


 scalar_t__ MIC_DMA_CHAN_MIC ;
 int MIC_DMA_REG_DCHERRMSK ;
 int MIC_DMA_REG_DTPR ;
 int mic_dma_chan_mask_intr (struct mic_dma_chan*) ;
 int mic_dma_chan_set_desc_ring (struct mic_dma_chan*) ;
 int mic_dma_chan_set_owner (struct mic_dma_chan*) ;
 int mic_dma_chan_unmask_intr (struct mic_dma_chan*) ;
 int mic_dma_check_chan (struct mic_dma_chan*) ;
 int mic_dma_disable_chan (struct mic_dma_chan*) ;
 int mic_dma_enable_chan (struct mic_dma_chan*) ;
 int mic_dma_read_reg (struct mic_dma_chan*,int ) ;
 int mic_dma_write_reg (struct mic_dma_chan*,int ,int ) ;

__attribute__((used)) static int mic_dma_chan_setup(struct mic_dma_chan *ch)
{
 if (MIC_DMA_CHAN_MIC == ch->owner)
  mic_dma_chan_set_owner(ch);
 mic_dma_disable_chan(ch);
 mic_dma_chan_mask_intr(ch);
 mic_dma_write_reg(ch, MIC_DMA_REG_DCHERRMSK, 0);
 mic_dma_chan_set_desc_ring(ch);
 ch->last_tail = mic_dma_read_reg(ch, MIC_DMA_REG_DTPR);
 ch->head = ch->last_tail;
 ch->issued = 0;
 mic_dma_chan_unmask_intr(ch);
 mic_dma_enable_chan(ch);
 return mic_dma_check_chan(ch);
}
