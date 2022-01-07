
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {void* dma_rx; void* dma_tx; } ;


 int EPROBE_DEFER ;
 void* ERR_PTR (int ) ;
 int IS_ERR (void*) ;
 int dma_release_channel (void*) ;

__attribute__((used)) static void sh_mobile_i2c_release_dma(struct sh_mobile_i2c_data *pd)
{
 if (!IS_ERR(pd->dma_tx)) {
  dma_release_channel(pd->dma_tx);
  pd->dma_tx = ERR_PTR(-EPROBE_DEFER);
 }

 if (!IS_ERR(pd->dma_rx)) {
  dma_release_channel(pd->dma_rx);
  pd->dma_rx = ERR_PTR(-EPROBE_DEFER);
 }
}
