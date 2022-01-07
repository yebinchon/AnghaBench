
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_muic_info {int irq; int irq_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t max77693_muic_irq_handler(int irq, void *data)
{
 struct max77693_muic_info *info = data;

 info->irq = irq;
 schedule_work(&info->irq_work);

 return IRQ_HANDLED;
}
