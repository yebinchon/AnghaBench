
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_dc {scalar_t__ base; } ;


 scalar_t__ DC_WR_CH_CONF ;
 int DC_WR_CH_CONF_PROG_TYPE_MASK ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void ipu_dc_disable_channel(struct ipu_dc *dc)
{
 u32 val;

 val = readl(dc->base + DC_WR_CH_CONF);
 val &= ~DC_WR_CH_CONF_PROG_TYPE_MASK;
 writel(val, dc->base + DC_WR_CH_CONF);
}
