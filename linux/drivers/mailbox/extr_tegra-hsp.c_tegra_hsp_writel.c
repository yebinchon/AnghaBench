
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_hsp {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void tegra_hsp_writel(struct tegra_hsp *hsp, u32 value,
        unsigned int offset)
{
 writel(value, hsp->regs + offset);
}
