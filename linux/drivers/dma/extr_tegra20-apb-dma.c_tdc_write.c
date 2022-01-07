
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_dma_channel {scalar_t__ chan_addr; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void tdc_write(struct tegra_dma_channel *tdc,
  u32 reg, u32 val)
{
 writel(val, tdc->chan_addr + reg);
}
