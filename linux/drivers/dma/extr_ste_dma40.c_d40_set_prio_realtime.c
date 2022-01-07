
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dir; int dev_type; } ;
struct d40_chan {TYPE_2__ dma_cfg; TYPE_1__* base; } ;
struct TYPE_3__ {int rev; } ;


 scalar_t__ DMA_DEV_TO_DEV ;
 scalar_t__ DMA_DEV_TO_MEM ;
 scalar_t__ DMA_MEM_TO_DEV ;
 int __d40_set_prio_rt (struct d40_chan*,int ,int) ;

__attribute__((used)) static void d40_set_prio_realtime(struct d40_chan *d40c)
{
 if (d40c->base->rev < 3)
  return;

 if ((d40c->dma_cfg.dir == DMA_DEV_TO_MEM) ||
     (d40c->dma_cfg.dir == DMA_DEV_TO_DEV))
  __d40_set_prio_rt(d40c, d40c->dma_cfg.dev_type, 1);

 if ((d40c->dma_cfg.dir == DMA_MEM_TO_DEV) ||
     (d40c->dma_cfg.dir == DMA_DEV_TO_DEV))
  __d40_set_prio_rt(d40c, d40c->dma_cfg.dev_type, 0);
}
