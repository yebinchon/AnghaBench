
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fritzcard {scalar_t__ addr; int ctrlreg; } ;


 int AVM_STATUS0_ENA_IRQ ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void
disable_hwirq(struct fritzcard *fc)
{
 fc->ctrlreg &= ~AVM_STATUS0_ENA_IRQ;
 outb(fc->ctrlreg, fc->addr + 2);
}
