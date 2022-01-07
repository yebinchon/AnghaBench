
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_dma {scalar_t__ base_addr; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 tdma_read(struct tegra_dma *tdma, u32 reg)
{
 return readl(tdma->base_addr + reg);
}
