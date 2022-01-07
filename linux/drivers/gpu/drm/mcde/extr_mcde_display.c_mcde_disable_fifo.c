
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mcde {int regs; int dev; int flow_lock; scalar_t__ flow_active; } ;
typedef enum mcde_fifo { ____Placeholder_mcde_fifo } mcde_fifo ;


 int MCDE_CRA0 ;
 int MCDE_CRB0 ;
 int MCDE_CRX0_FLOEN ;


 int dev_err (int ,char*,char) ;
 int readl (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usleep_range (int,int) ;
 int writel (int,int) ;

__attribute__((used)) static void mcde_disable_fifo(struct mcde *mcde, enum mcde_fifo fifo,
         bool wait_for_drain)
{
 int timeout = 100;
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
  dev_err(mcde->dev, "cannot disable FIFO %c\n",
   'A' + fifo);
  return;
 }

 spin_lock(&mcde->flow_lock);
 val = readl(mcde->regs + cr);
 val &= ~MCDE_CRX0_FLOEN;
 writel(val, mcde->regs + cr);
 mcde->flow_active = 0;
 spin_unlock(&mcde->flow_lock);

 if (!wait_for_drain)
  return;


 while (readl(mcde->regs + cr) & MCDE_CRX0_FLOEN) {
  usleep_range(1000, 1500);
  if (!--timeout) {
   dev_err(mcde->dev,
    "FIFO timeout while clearing FIFO %c\n",
    'A' + fifo);
   return;
  }
 }
}
