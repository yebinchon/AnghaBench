
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dsi {scalar_t__ regs; int dev; } ;


 int trace_dsi_writel (int ,unsigned int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void tegra_dsi_writel(struct tegra_dsi *dsi, u32 value,
        unsigned int offset)
{
 trace_dsi_writel(dsi->dev, offset, value);
 writel(value, dsi->regs + (offset << 2));
}
