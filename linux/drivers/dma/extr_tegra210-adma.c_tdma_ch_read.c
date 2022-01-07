
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_adma_chan {scalar_t__ chan_addr; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 tdma_ch_read(struct tegra_adma_chan *tdc, u32 reg)
{
 return readl(tdc->chan_addr + reg);
}
