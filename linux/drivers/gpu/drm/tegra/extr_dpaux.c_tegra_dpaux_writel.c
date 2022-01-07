
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dpaux {scalar_t__ regs; int dev; } ;


 int trace_dpaux_writel (int ,unsigned int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void tegra_dpaux_writel(struct tegra_dpaux *dpaux,
          u32 value, unsigned int offset)
{
 trace_dpaux_writel(dpaux->dev, offset, value);
 writel(value, dpaux->regs + (offset << 2));
}
