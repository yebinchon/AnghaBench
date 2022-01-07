
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int chan_id; } ;
struct pch_dma_chan {TYPE_1__ chan; } ;


 scalar_t__ DMA_STATUS_IDLE ;
 scalar_t__ pdc_get_status0 (struct pch_dma_chan*) ;
 scalar_t__ pdc_get_status2 (struct pch_dma_chan*) ;

__attribute__((used)) static bool pdc_is_idle(struct pch_dma_chan *pd_chan)
{
 u32 sts;

 if (pd_chan->chan.chan_id < 8)
  sts = pdc_get_status0(pd_chan);
 else
  sts = pdc_get_status2(pd_chan);


 if (sts == DMA_STATUS_IDLE)
  return 1;
 else
  return 0;
}
