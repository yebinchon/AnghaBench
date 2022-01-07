
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_dma_chan {int done_list; int pending_list; int active_list; } ;


 int zynqmp_dma_free_desc_list (struct zynqmp_dma_chan*,int *) ;

__attribute__((used)) static void zynqmp_dma_free_descriptors(struct zynqmp_dma_chan *chan)
{
 zynqmp_dma_free_desc_list(chan, &chan->active_list);
 zynqmp_dma_free_desc_list(chan, &chan->pending_list);
 zynqmp_dma_free_desc_list(chan, &chan->done_list);
}
