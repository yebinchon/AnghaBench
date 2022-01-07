
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_dma_chan {int desc; } ;


 int dmaengine_desc_get_callback_invoke (int *,int *) ;

__attribute__((used)) static void mxs_dma_tasklet(unsigned long data)
{
 struct mxs_dma_chan *mxs_chan = (struct mxs_dma_chan *) data;

 dmaengine_desc_get_callback_invoke(&mxs_chan->desc, ((void*)0));
}
