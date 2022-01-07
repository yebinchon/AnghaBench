
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct host1x_channel {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

void host1x_ch_writel(struct host1x_channel *ch, u32 v, u32 r)
{
 writel(v, ch->regs + r);
}
