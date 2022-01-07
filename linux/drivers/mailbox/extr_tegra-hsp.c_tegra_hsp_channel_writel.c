
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_hsp_channel {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void tegra_hsp_channel_writel(struct tegra_hsp_channel *channel,
         u32 value, unsigned int offset)
{
 writel(value, channel->regs + offset);
}
