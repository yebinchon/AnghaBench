
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmp_pdma_phy {int base; int idx; TYPE_1__* vchan; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int) ;
 int DCSR ;
 int DCSR_BUSERR ;
 int DINT ;
 int EAGAIN ;
 int dev_warn (int ,char*) ;
 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static int clear_chan_irq(struct mmp_pdma_phy *phy)
{
 u32 dcsr;
 u32 dint = readl(phy->base + DINT);
 u32 reg = (phy->idx << 2) + DCSR;

 if (!(dint & BIT(phy->idx)))
  return -EAGAIN;


 dcsr = readl(phy->base + reg);
 writel(dcsr, phy->base + reg);
 if ((dcsr & DCSR_BUSERR) && (phy->vchan))
  dev_warn(phy->vchan->dev, "DCSR_BUSERR\n");

 return 0;
}
