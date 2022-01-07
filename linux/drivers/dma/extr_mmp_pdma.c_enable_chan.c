
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmp_pdma_phy {int idx; int base; TYPE_1__* vchan; } ;
struct TYPE_2__ {scalar_t__ byte_align; int drcmr; } ;


 int DALGN ;
 int DCSR ;
 int DCSR_RUN ;
 int DRCMR (int ) ;
 int DRCMR_MAPVLD ;
 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static void enable_chan(struct mmp_pdma_phy *phy)
{
 u32 reg, dalgn;

 if (!phy->vchan)
  return;

 reg = DRCMR(phy->vchan->drcmr);
 writel(DRCMR_MAPVLD | phy->idx, phy->base + reg);

 dalgn = readl(phy->base + DALGN);
 if (phy->vchan->byte_align)
  dalgn |= 1 << phy->idx;
 else
  dalgn &= ~(1 << phy->idx);
 writel(dalgn, phy->base + DALGN);

 reg = (phy->idx << 2) + DCSR;
 writel(readl(phy->base + reg) | DCSR_RUN, phy->base + reg);
}
