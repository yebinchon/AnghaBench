
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak8974 {int drdy_irq; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;

__attribute__((used)) static irqreturn_t ak8974_drdy_irq(int irq, void *d)
{
 struct ak8974 *ak8974 = d;

 if (!ak8974->drdy_irq)
  return IRQ_NONE;


 return IRQ_WAKE_THREAD;
}
