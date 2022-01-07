
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t size; int * mem; int dma; } ;
struct rcar_dmac_desc {TYPE_3__ hwdescs; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct rcar_dmac_chan {TYPE_2__ chan; } ;
struct TYPE_4__ {int dev; } ;


 int GFP_NOWAIT ;
 size_t PAGE_ALIGN (size_t) ;
 int * dma_alloc_coherent (int ,size_t,int *,int ) ;
 int dma_free_coherent (int ,size_t,int *,int ) ;

__attribute__((used)) static void rcar_dmac_realloc_hwdesc(struct rcar_dmac_chan *chan,
         struct rcar_dmac_desc *desc, size_t size)
{






 size = PAGE_ALIGN(size);

 if (desc->hwdescs.size == size)
  return;

 if (desc->hwdescs.mem) {
  dma_free_coherent(chan->chan.device->dev, desc->hwdescs.size,
      desc->hwdescs.mem, desc->hwdescs.dma);
  desc->hwdescs.mem = ((void*)0);
  desc->hwdescs.size = 0;
 }

 if (!size)
  return;

 desc->hwdescs.mem = dma_alloc_coherent(chan->chan.device->dev, size,
            &desc->hwdescs.dma, GFP_NOWAIT);
 if (!desc->hwdescs.mem)
  return;

 desc->hwdescs.size = size;
}
