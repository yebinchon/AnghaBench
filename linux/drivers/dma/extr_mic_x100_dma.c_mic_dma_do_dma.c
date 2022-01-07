
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {size_t head; int status_dest_micpa; int * desc_ring; } ;
typedef int dma_addr_t ;


 int DMA_PREP_FENCE ;
 int DMA_PREP_INTERRUPT ;
 int ENOMEM ;
 int mic_dma_avail_desc_ring_space (struct mic_dma_chan*,int) ;
 int mic_dma_hw_ring_inc_head (struct mic_dma_chan*) ;
 int mic_dma_prep_status_desc (int *,int ,int ,int) ;
 int mic_dma_prog_intr (struct mic_dma_chan*) ;
 int mic_dma_prog_memcpy_desc (struct mic_dma_chan*,int ,int ,size_t) ;

__attribute__((used)) static int mic_dma_do_dma(struct mic_dma_chan *ch, int flags, dma_addr_t src,
     dma_addr_t dst, size_t len)
{
 if (len && -ENOMEM == mic_dma_prog_memcpy_desc(ch, src, dst, len)) {
  return -ENOMEM;
 } else {

  int ret = mic_dma_avail_desc_ring_space(ch, 3);

  if (ret < 0)
   return ret;
 }


 if (flags & DMA_PREP_FENCE) {
  mic_dma_prep_status_desc(&ch->desc_ring[ch->head], 0,
      ch->status_dest_micpa, 0);
  mic_dma_hw_ring_inc_head(ch);
 }

 if (flags & DMA_PREP_INTERRUPT)
  mic_dma_prog_intr(ch);

 return 0;
}
