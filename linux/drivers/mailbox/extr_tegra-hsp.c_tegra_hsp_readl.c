
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_hsp {scalar_t__ regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 tegra_hsp_readl(struct tegra_hsp *hsp, unsigned int offset)
{
 return readl(hsp->regs + offset);
}
