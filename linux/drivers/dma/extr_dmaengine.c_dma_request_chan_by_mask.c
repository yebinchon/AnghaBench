
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;


 int ENODEV ;
 int EPROBE_DEFER ;
 struct dma_chan* ERR_PTR (int ) ;
 struct dma_chan* __dma_request_channel (int const*,int *,int *,int *) ;
 int dma_device_list ;
 int dma_list_mutex ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct dma_chan *dma_request_chan_by_mask(const dma_cap_mask_t *mask)
{
 struct dma_chan *chan;

 if (!mask)
  return ERR_PTR(-ENODEV);

 chan = __dma_request_channel(mask, ((void*)0), ((void*)0), ((void*)0));
 if (!chan) {
  mutex_lock(&dma_list_mutex);
  if (list_empty(&dma_device_list))
   chan = ERR_PTR(-EPROBE_DEFER);
  else
   chan = ERR_PTR(-ENODEV);
  mutex_unlock(&dma_list_mutex);
 }

 return chan;
}
