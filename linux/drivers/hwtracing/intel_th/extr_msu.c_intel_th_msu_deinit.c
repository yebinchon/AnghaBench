
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msc {scalar_t__ msu_base; scalar_t__ index; int do_irq; } ;


 int M0BLIE ;
 int M1BLIE ;
 scalar_t__ REG_MSU_MINTCTL ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void intel_th_msu_deinit(struct msc *msc)
{
 u32 mintctl;

 if (!msc->do_irq)
  return;

 mintctl = ioread32(msc->msu_base + REG_MSU_MINTCTL);
 mintctl &= msc->index ? ~M1BLIE : ~M0BLIE;
 iowrite32(mintctl, msc->msu_base + REG_MSU_MINTCTL);
}
