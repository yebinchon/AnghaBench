
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_dma_tx_descriptor {int segments; } ;
struct xilinx_dma_chan {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct xilinx_dma_tx_descriptor* kzalloc (int,int ) ;

__attribute__((used)) static struct xilinx_dma_tx_descriptor *
xilinx_dma_alloc_tx_descriptor(struct xilinx_dma_chan *chan)
{
 struct xilinx_dma_tx_descriptor *desc;

 desc = kzalloc(sizeof(*desc), GFP_KERNEL);
 if (!desc)
  return ((void*)0);

 INIT_LIST_HEAD(&desc->segments);

 return desc;
}
