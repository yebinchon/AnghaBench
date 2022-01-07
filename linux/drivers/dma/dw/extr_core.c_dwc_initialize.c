
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device; } ;
struct dw_dma_chan {int flags; int mask; TYPE_1__ chan; } ;
struct dw_dma {int (* initialize_chan ) (struct dw_dma_chan*) ;} ;
struct TYPE_4__ {int ERROR; int XFER; } ;


 int DW_DMA_IS_INITIALIZED ;
 TYPE_2__ MASK ;
 int channel_set_bit (struct dw_dma*,int ,int ) ;
 int set_bit (int ,int *) ;
 int stub1 (struct dw_dma_chan*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct dw_dma* to_dw_dma (int ) ;

__attribute__((used)) static void dwc_initialize(struct dw_dma_chan *dwc)
{
 struct dw_dma *dw = to_dw_dma(dwc->chan.device);

 if (test_bit(DW_DMA_IS_INITIALIZED, &dwc->flags))
  return;

 dw->initialize_chan(dwc);


 channel_set_bit(dw, MASK.XFER, dwc->mask);
 channel_set_bit(dw, MASK.ERROR, dwc->mask);

 set_bit(DW_DMA_IS_INITIALIZED, &dwc->flags);
}
