
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_device {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;


 int DMA_SLAVE ;
 scalar_t__ IS_ERR (struct dma_chan*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_list_mutex ;
 struct dma_chan* find_candidate (struct dma_device*,int *,int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct dma_chan *dma_get_any_slave_channel(struct dma_device *device)
{
 dma_cap_mask_t mask;
 struct dma_chan *chan;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);


 mutex_lock(&dma_list_mutex);

 chan = find_candidate(device, &mask, ((void*)0), ((void*)0));

 mutex_unlock(&dma_list_mutex);

 return IS_ERR(chan) ? ((void*)0) : chan;
}
