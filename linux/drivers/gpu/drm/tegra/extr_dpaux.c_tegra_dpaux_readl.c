
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dpaux {int dev; scalar_t__ regs; } ;


 int readl (scalar_t__) ;
 int trace_dpaux_readl (int ,unsigned int,int ) ;

__attribute__((used)) static inline u32 tegra_dpaux_readl(struct tegra_dpaux *dpaux,
        unsigned int offset)
{
 u32 value = readl(dpaux->regs + (offset << 2));

 trace_dpaux_readl(dpaux->dev, offset, value);

 return value;
}
