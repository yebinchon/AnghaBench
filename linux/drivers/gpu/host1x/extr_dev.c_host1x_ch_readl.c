
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct host1x_channel {scalar_t__ regs; } ;


 scalar_t__ readl (scalar_t__) ;

u32 host1x_ch_readl(struct host1x_channel *ch, u32 r)
{
 return readl(ch->regs + r);
}
