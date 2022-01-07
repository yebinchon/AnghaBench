
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_tdma_chan {int desc; } ;


 int dmaengine_desc_get_callback_invoke (int *,int *) ;

__attribute__((used)) static void dma_do_tasklet(unsigned long data)
{
 struct mmp_tdma_chan *tdmac = (struct mmp_tdma_chan *)data;

 dmaengine_desc_get_callback_invoke(&tdmac->desc, ((void*)0));
}
