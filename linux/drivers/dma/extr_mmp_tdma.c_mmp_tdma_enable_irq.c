
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_tdma_chan {scalar_t__ reg_base; } ;


 scalar_t__ TDIMR ;
 int TDIMR_COMP ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mmp_tdma_enable_irq(struct mmp_tdma_chan *tdmac, bool enable)
{
 if (enable)
  writel(TDIMR_COMP, tdmac->reg_base + TDIMR);
 else
  writel(0, tdmac->reg_base + TDIMR);
}
