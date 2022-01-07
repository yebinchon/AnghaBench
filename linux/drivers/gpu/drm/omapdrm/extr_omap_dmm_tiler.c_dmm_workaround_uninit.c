
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmm {int wa_dma_handle; int wa_dma_data; int dev; int wa_dma_chan; } ;


 int dma_free_coherent (int ,int,int ,int ) ;
 int dma_release_channel (int ) ;

__attribute__((used)) static void dmm_workaround_uninit(struct dmm *dmm)
{
 dma_release_channel(dmm->wa_dma_chan);

 dma_free_coherent(dmm->dev, 4, dmm->wa_dma_data, dmm->wa_dma_handle);
}
