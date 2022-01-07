
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_hsp_channel {scalar_t__ regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 tegra_hsp_channel_readl(struct tegra_hsp_channel *channel,
       unsigned int offset)
{
 return readl(channel->regs + offset);
}
