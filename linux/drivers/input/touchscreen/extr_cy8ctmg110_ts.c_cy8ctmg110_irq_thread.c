
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cy8ctmg110 {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int cy8ctmg110_touch_pos (struct cy8ctmg110*) ;

__attribute__((used)) static irqreturn_t cy8ctmg110_irq_thread(int irq, void *dev_id)
{
 struct cy8ctmg110 *tsc = dev_id;

 cy8ctmg110_touch_pos(tsc);

 return IRQ_HANDLED;
}
