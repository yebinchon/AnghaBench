
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pdc_state {int rx_status_len; TYPE_1__* regs; } ;
struct TYPE_6__ {int control; } ;
struct TYPE_5__ {int control; } ;
struct dma64 {TYPE_3__ dmarcv; TYPE_2__ dmaxmt; } ;
struct TYPE_4__ {struct dma64* dmaregs; } ;


 size_t PDC_RINGSET ;
 scalar_t__ PDC_RX_CTL ;
 scalar_t__ PDC_TX_CTL ;
 int iowrite32 (scalar_t__,int *) ;

__attribute__((used)) static void pdc_hw_disable(struct pdc_state *pdcs)
{
 struct dma64 *dma_reg;

 dma_reg = &pdcs->regs->dmaregs[PDC_RINGSET];
 iowrite32(PDC_TX_CTL, &dma_reg->dmaxmt.control);
 iowrite32(PDC_RX_CTL + (pdcs->rx_status_len << 1),
    &dma_reg->dmarcv.control);
}
