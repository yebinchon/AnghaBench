
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mic_dma_chan {size_t head; int prep_lock; int * desc_ring; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef int dma_addr_t ;


 struct dma_async_tx_descriptor* allocate_tx (struct mic_dma_chan*) ;
 int dev_err (int ,char*,int) ;
 int mic_dma_avail_desc_ring_space (struct mic_dma_chan*,int) ;
 int mic_dma_ch_to_device (struct mic_dma_chan*) ;
 int mic_dma_do_dma (struct mic_dma_chan*,unsigned long,int ,int ,int ) ;
 int mic_dma_hw_ring_inc_head (struct mic_dma_chan*) ;
 int mic_dma_prep_status_desc (int *,int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct mic_dma_chan* to_mic_dma_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
mic_dma_prep_status_lock(struct dma_chan *ch, dma_addr_t dst, u64 src_val,
    unsigned long flags)
{
 struct mic_dma_chan *mic_ch = to_mic_dma_chan(ch);
 int result;

 spin_lock(&mic_ch->prep_lock);
 result = mic_dma_avail_desc_ring_space(mic_ch, 4);
 if (result < 0)
  goto error;
 mic_dma_prep_status_desc(&mic_ch->desc_ring[mic_ch->head], src_val, dst,
     0);
 mic_dma_hw_ring_inc_head(mic_ch);
 result = mic_dma_do_dma(mic_ch, flags, 0, 0, 0);
 if (result < 0)
  goto error;

 return allocate_tx(mic_ch);
error:
 dev_err(mic_dma_ch_to_device(mic_ch),
  "Error enqueueing dma status descriptor, error=%d\n", result);
 spin_unlock(&mic_ch->prep_lock);
 return ((void*)0);
}
