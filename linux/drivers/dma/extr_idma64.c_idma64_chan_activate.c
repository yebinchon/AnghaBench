
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idma64_chan {int dummy; } ;


 int CFG_LO ;
 int IDMA64C_CFGL_CH_SUSP ;
 int channel_readl (struct idma64_chan*,int ) ;
 int channel_writel (struct idma64_chan*,int ,int) ;

__attribute__((used)) static void idma64_chan_activate(struct idma64_chan *idma64c)
{
 u32 cfglo;

 cfglo = channel_readl(idma64c, CFG_LO);
 channel_writel(idma64c, CFG_LO, cfglo & ~IDMA64C_CFGL_CH_SUSP);
}
