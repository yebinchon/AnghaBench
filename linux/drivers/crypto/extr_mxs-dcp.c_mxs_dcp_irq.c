
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dcp {int * completion; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int DCP_MAX_CHANS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MXS_DCP_STAT ;
 scalar_t__ MXS_DCP_STAT_CLR ;
 int MXS_DCP_STAT_IRQ_MASK ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mxs_dcp_irq(int irq, void *context)
{
 struct dcp *sdcp = context;
 uint32_t stat;
 int i;

 stat = readl(sdcp->base + MXS_DCP_STAT);
 stat &= MXS_DCP_STAT_IRQ_MASK;
 if (!stat)
  return IRQ_NONE;


 writel(stat, sdcp->base + MXS_DCP_STAT_CLR);


 for (i = 0; i < DCP_MAX_CHANS; i++)
  if (stat & (1 << i))
   complete(&sdcp->completion[i]);

 return IRQ_HANDLED;
}
