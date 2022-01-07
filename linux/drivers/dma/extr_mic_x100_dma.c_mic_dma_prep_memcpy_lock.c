
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {int prep_lock; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 struct dma_async_tx_descriptor* allocate_tx (struct mic_dma_chan*) ;
 int dev_err (struct device*,char*,int) ;
 struct device* mic_dma_ch_to_device (struct mic_dma_chan*) ;
 int mic_dma_do_dma (struct mic_dma_chan*,unsigned long,int ,int ,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct mic_dma_chan* to_mic_dma_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
mic_dma_prep_memcpy_lock(struct dma_chan *ch, dma_addr_t dma_dest,
    dma_addr_t dma_src, size_t len, unsigned long flags)
{
 struct mic_dma_chan *mic_ch = to_mic_dma_chan(ch);
 struct device *dev = mic_dma_ch_to_device(mic_ch);
 int result;

 if (!len && !flags)
  return ((void*)0);

 spin_lock(&mic_ch->prep_lock);
 result = mic_dma_do_dma(mic_ch, flags, dma_src, dma_dest, len);
 if (result >= 0)
  return allocate_tx(mic_ch);
 dev_err(dev, "Error enqueueing dma, error=%d\n", result);
 spin_unlock(&mic_ch->prep_lock);
 return ((void*)0);
}
