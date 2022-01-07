
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptn5150_info {int irq_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t ptn5150_irq_handler(int irq, void *data)
{
 struct ptn5150_info *info = data;

 schedule_work(&info->irq_work);

 return IRQ_HANDLED;
}
