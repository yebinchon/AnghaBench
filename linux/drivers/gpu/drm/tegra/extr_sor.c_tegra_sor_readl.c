
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_sor {int dev; scalar_t__ regs; } ;


 int readl (scalar_t__) ;
 int trace_sor_readl (int ,unsigned int,int ) ;

__attribute__((used)) static inline u32 tegra_sor_readl(struct tegra_sor *sor, unsigned int offset)
{
 u32 value = readl(sor->regs + (offset << 2));

 trace_sor_readl(sor->dev, offset, value);

 return value;
}
