
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_dc {scalar_t__ base; } ;


 scalar_t__ DC_RL_CH (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void dc_link_event(struct ipu_dc *dc, int event, int addr, int priority)
{
 u32 reg;

 reg = readl(dc->base + DC_RL_CH(event));
 reg &= ~(0xffff << (16 * (event & 0x1)));
 reg |= ((addr << 8) | priority) << (16 * (event & 0x1));
 writel(reg, dc->base + DC_RL_CH(event));
}
