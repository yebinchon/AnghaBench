
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mcde {int flow_lock; int flow_active; scalar_t__ regs; int dev; } ;
typedef enum mcde_fifo { ____Placeholder_mcde_fifo } mcde_fifo ;


 scalar_t__ MCDE_CRA0 ;
 scalar_t__ MCDE_CRB0 ;
 scalar_t__ MCDE_CRX0_FLOEN ;


 int dev_err (int ,char*,char) ;
 scalar_t__ readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mcde_enable_fifo(struct mcde *mcde, enum mcde_fifo fifo)
{
 u32 val;
 u32 cr;

 switch (fifo) {
 case 129:
  cr = MCDE_CRA0;
  break;
 case 128:
  cr = MCDE_CRB0;
  break;
 default:
  dev_err(mcde->dev, "cannot enable FIFO %c\n",
   'A' + fifo);
  return;
 }

 spin_lock(&mcde->flow_lock);
 val = readl(mcde->regs + cr);
 val |= MCDE_CRX0_FLOEN;
 writel(val, mcde->regs + cr);
 mcde->flow_active++;
 spin_unlock(&mcde->flow_lock);
}
