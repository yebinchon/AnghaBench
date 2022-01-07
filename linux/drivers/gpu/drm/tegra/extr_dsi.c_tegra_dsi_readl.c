
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dsi {int dev; scalar_t__ regs; } ;


 int readl (scalar_t__) ;
 int trace_dsi_readl (int ,unsigned int,int ) ;

__attribute__((used)) static inline u32 tegra_dsi_readl(struct tegra_dsi *dsi, unsigned int offset)
{
 u32 value = readl(dsi->regs + (offset << 2));

 trace_dsi_readl(dsi->dev, offset, value);

 return value;
}
