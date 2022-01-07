
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_dc {scalar_t__ base; } ;


 scalar_t__ DC_WR_CH_CONF ;
 int DC_WR_CH_CONF_PROG_TYPE_NORMAL ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void ipu_dc_enable_channel(struct ipu_dc *dc)
{
 u32 reg;

 reg = readl(dc->base + DC_WR_CH_CONF);
 reg |= DC_WR_CH_CONF_PROG_TYPE_NORMAL;
 writel(reg, dc->base + DC_WR_CH_CONF);
}
