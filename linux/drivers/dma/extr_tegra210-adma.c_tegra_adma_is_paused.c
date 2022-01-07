
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_adma_chan {int dummy; } ;


 int ADMA_CH_STATUS ;
 int ADMA_CH_STATUS_XFER_PAUSED ;
 int tdma_ch_read (struct tegra_adma_chan*,int ) ;

__attribute__((used)) static bool tegra_adma_is_paused(struct tegra_adma_chan *tdc)
{
 u32 csts;

 csts = tdma_ch_read(tdc, ADMA_CH_STATUS);
 csts &= ADMA_CH_STATUS_XFER_PAUSED;

 return csts ? 1 : 0;
}
