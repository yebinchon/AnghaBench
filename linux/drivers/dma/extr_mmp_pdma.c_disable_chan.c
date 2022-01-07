
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mmp_pdma_phy {int idx; scalar_t__ base; } ;


 scalar_t__ DCSR ;
 int DCSR_RUN ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void disable_chan(struct mmp_pdma_phy *phy)
{
 u32 reg;

 if (!phy)
  return;

 reg = (phy->idx << 2) + DCSR;
 writel(readl(phy->base + reg) & ~DCSR_RUN, phy->base + reg);
}
