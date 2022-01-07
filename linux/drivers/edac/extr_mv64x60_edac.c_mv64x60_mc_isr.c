
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv64x60_mc_pdata {scalar_t__ mc_vbase; } ;
struct mem_ctl_info {struct mv64x60_mc_pdata* pvt_info; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MV64X60_SDRAM_ERR_ADDR ;
 int mv64x60_mc_check (struct mem_ctl_info*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t mv64x60_mc_isr(int irq, void *dev_id)
{
 struct mem_ctl_info *mci = dev_id;
 struct mv64x60_mc_pdata *pdata = mci->pvt_info;
 u32 reg;

 reg = readl(pdata->mc_vbase + MV64X60_SDRAM_ERR_ADDR);
 if (!reg)
  return IRQ_NONE;


 mv64x60_mc_check(mci);

 return IRQ_HANDLED;
}
