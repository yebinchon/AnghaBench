
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_sor {scalar_t__ regs; int dev; } ;


 int trace_sor_writel (int ,unsigned int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void tegra_sor_writel(struct tegra_sor *sor, u32 value,
        unsigned int offset)
{
 trace_sor_writel(sor->dev, offset, value);
 writel(value, sor->regs + (offset << 2));
}
