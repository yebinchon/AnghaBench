
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ dir; int dev_type; } ;
struct d40_chan {TYPE_1__ dma_cfg; } ;
typedef enum d40_events { ____Placeholder_d40_events } d40_events ;


 int D40_CHAN_REG_SDLNK ;
 int D40_CHAN_REG_SSLNK ;
 int D40_TYPE_TO_EVENT (int ) ;
 scalar_t__ DMA_DEV_TO_DEV ;
 scalar_t__ DMA_DEV_TO_MEM ;
 int __d40_config_set_event (struct d40_chan*,int,int ,int ) ;

__attribute__((used)) static void d40_config_set_event(struct d40_chan *d40c,
     enum d40_events event_type)
{
 u32 event = D40_TYPE_TO_EVENT(d40c->dma_cfg.dev_type);


 if ((d40c->dma_cfg.dir == DMA_DEV_TO_MEM) ||
     (d40c->dma_cfg.dir == DMA_DEV_TO_DEV))
  __d40_config_set_event(d40c, event_type, event,
           D40_CHAN_REG_SSLNK);

 if (d40c->dma_cfg.dir != DMA_DEV_TO_MEM)
  __d40_config_set_event(d40c, event_type, event,
           D40_CHAN_REG_SDLNK);
}
