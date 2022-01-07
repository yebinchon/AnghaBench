
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_dma {scalar_t__ base_addr; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void tdma_write(struct tegra_dma *tdma, u32 reg, u32 val)
{
 writel(val, tdma->base_addr + reg);
}
