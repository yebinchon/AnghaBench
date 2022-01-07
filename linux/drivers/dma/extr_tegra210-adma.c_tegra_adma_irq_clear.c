
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_adma_chan {int dummy; } ;


 int ADMA_CH_INT_CLEAR ;
 int tdma_ch_write (struct tegra_adma_chan*,int ,scalar_t__) ;
 scalar_t__ tegra_adma_irq_status (struct tegra_adma_chan*) ;

__attribute__((used)) static u32 tegra_adma_irq_clear(struct tegra_adma_chan *tdc)
{
 u32 status = tegra_adma_irq_status(tdc);

 if (status)
  tdma_ch_write(tdc, ADMA_CH_INT_CLEAR, status);

 return status;
}
