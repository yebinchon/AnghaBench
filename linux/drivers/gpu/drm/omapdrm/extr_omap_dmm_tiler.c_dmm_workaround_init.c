
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dmm {int wa_dma_handle; int wa_dma_data; int dev; int wa_dma_chan; int wa_lock; } ;
typedef int dma_cap_mask_t ;


 int DMA_MEMCPY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int dma_request_channel (int ,int *,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dmm_workaround_init(struct dmm *dmm)
{
 dma_cap_mask_t mask;

 spin_lock_init(&dmm->wa_lock);

 dmm->wa_dma_data = dma_alloc_coherent(dmm->dev, sizeof(u32),
           &dmm->wa_dma_handle, GFP_KERNEL);
 if (!dmm->wa_dma_data)
  return -ENOMEM;

 dma_cap_zero(mask);
 dma_cap_set(DMA_MEMCPY, mask);

 dmm->wa_dma_chan = dma_request_channel(mask, ((void*)0), ((void*)0));
 if (!dmm->wa_dma_chan) {
  dma_free_coherent(dmm->dev, 4, dmm->wa_dma_data, dmm->wa_dma_handle);
  return -ENODEV;
 }

 return 0;
}
