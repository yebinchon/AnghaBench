
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* device; } ;
struct dma_pl330_chan {scalar_t__ dir; int burst_sz; int fifo_dma; TYPE_2__ chan; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ DMA_NONE ;
 int dma_unmap_resource (int ,int ,int,scalar_t__,int ) ;

__attribute__((used)) static void pl330_unprep_slave_fifo(struct dma_pl330_chan *pch)
{
 if (pch->dir != DMA_NONE)
  dma_unmap_resource(pch->chan.device->dev, pch->fifo_dma,
       1 << pch->burst_sz, pch->dir, 0);
 pch->dir = DMA_NONE;
}
