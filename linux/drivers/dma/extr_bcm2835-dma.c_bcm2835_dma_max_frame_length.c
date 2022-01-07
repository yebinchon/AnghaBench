
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_chan {scalar_t__ is_lite_channel; } ;


 size_t MAX_DMA_LEN ;
 size_t MAX_LITE_DMA_LEN ;

__attribute__((used)) static inline size_t bcm2835_dma_max_frame_length(struct bcm2835_chan *c)
{

 return c->is_lite_channel ? MAX_LITE_DMA_LEN : MAX_DMA_LEN;
}
