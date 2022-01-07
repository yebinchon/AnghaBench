
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_adma_chan {int dummy; } ;


 int ADMA_CH_INT_STATUS ;
 int ADMA_CH_INT_STATUS_XFER_DONE ;
 int tdma_ch_read (struct tegra_adma_chan*,int ) ;

__attribute__((used)) static u32 tegra_adma_irq_status(struct tegra_adma_chan *tdc)
{
 u32 status = tdma_ch_read(tdc, ADMA_CH_INT_STATUS);

 return status & ADMA_CH_INT_STATUS_XFER_DONE;
}
