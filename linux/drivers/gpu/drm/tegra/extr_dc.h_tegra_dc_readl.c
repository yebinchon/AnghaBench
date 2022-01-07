
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dc {int dev; scalar_t__ regs; } ;


 int readl (scalar_t__) ;
 int trace_dc_readl (int ,unsigned int,int ) ;

__attribute__((used)) static inline u32 tegra_dc_readl(struct tegra_dc *dc, unsigned int offset)
{
 u32 value = readl(dc->regs + (offset << 2));

 trace_dc_readl(dc->dev, offset, value);

 return value;
}
