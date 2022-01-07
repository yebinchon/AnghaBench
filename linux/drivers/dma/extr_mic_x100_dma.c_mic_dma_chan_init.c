
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {int dummy; } ;


 int mic_dma_alloc_desc_ring (struct mic_dma_chan*) ;
 int mic_dma_alloc_status_dest (struct mic_dma_chan*) ;
 int mic_dma_chan_setup (struct mic_dma_chan*) ;
 int mic_dma_free_desc_ring (struct mic_dma_chan*) ;
 int mic_dma_free_status_dest (struct mic_dma_chan*) ;

__attribute__((used)) static int mic_dma_chan_init(struct mic_dma_chan *ch)
{
 int ret = mic_dma_alloc_desc_ring(ch);

 if (ret)
  goto ring_error;
 ret = mic_dma_alloc_status_dest(ch);
 if (ret)
  goto status_error;
 ret = mic_dma_chan_setup(ch);
 if (ret)
  goto chan_error;
 return ret;
chan_error:
 mic_dma_free_status_dest(ch);
status_error:
 mic_dma_free_desc_ring(ch);
ring_error:
 return ret;
}
