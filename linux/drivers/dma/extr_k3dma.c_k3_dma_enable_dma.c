
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k3_dma_dev {scalar_t__ base; } ;


 scalar_t__ CH_PRI ;
 scalar_t__ INT_ERR1_MASK ;
 scalar_t__ INT_ERR2_MASK ;
 scalar_t__ INT_TC1_MASK ;
 scalar_t__ INT_TC2_MASK ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void k3_dma_enable_dma(struct k3_dma_dev *d, bool on)
{
 if (on) {

  writel_relaxed(0x0, d->base + CH_PRI);


  writel_relaxed(0xffff, d->base + INT_TC1_MASK);
  writel_relaxed(0xffff, d->base + INT_TC2_MASK);
  writel_relaxed(0xffff, d->base + INT_ERR1_MASK);
  writel_relaxed(0xffff, d->base + INT_ERR2_MASK);
 } else {

  writel_relaxed(0x0, d->base + INT_TC1_MASK);
  writel_relaxed(0x0, d->base + INT_TC2_MASK);
  writel_relaxed(0x0, d->base + INT_ERR1_MASK);
  writel_relaxed(0x0, d->base + INT_ERR2_MASK);
 }
}
