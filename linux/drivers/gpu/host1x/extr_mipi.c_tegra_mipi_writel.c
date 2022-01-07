
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_mipi {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void tegra_mipi_writel(struct tegra_mipi *mipi, u32 value,
         unsigned long offset)
{
 writel(value, mipi->regs + (offset << 2));
}
