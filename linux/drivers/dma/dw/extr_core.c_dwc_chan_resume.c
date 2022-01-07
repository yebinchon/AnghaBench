
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct dw_dma_chan {int flags; TYPE_1__ chan; } ;
struct dw_dma {int (* resume_chan ) (struct dw_dma_chan*,int) ;} ;


 int DW_DMA_IS_PAUSED ;
 int clear_bit (int ,int *) ;
 int stub1 (struct dw_dma_chan*,int) ;
 struct dw_dma* to_dw_dma (int ) ;

__attribute__((used)) static inline void dwc_chan_resume(struct dw_dma_chan *dwc, bool drain)
{
 struct dw_dma *dw = to_dw_dma(dwc->chan.device);

 dw->resume_chan(dwc, drain);

 clear_bit(DW_DMA_IS_PAUSED, &dwc->flags);
}
