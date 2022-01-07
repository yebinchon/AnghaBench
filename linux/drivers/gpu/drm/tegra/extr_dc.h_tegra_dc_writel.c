
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dc {scalar_t__ regs; int dev; } ;


 int trace_dc_writel (int ,unsigned int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void tegra_dc_writel(struct tegra_dc *dc, u32 value,
       unsigned int offset)
{
 trace_dc_writel(dc->dev, offset, value);
 writel(value, dc->regs + (offset << 2));
}
