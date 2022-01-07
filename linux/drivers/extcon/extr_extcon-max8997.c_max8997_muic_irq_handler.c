
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_muic_info {int irq; int irq_work; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t max8997_muic_irq_handler(int irq, void *data)
{
 struct max8997_muic_info *info = data;

 dev_dbg(info->dev, "irq:%d\n", irq);
 info->irq = irq;

 schedule_work(&info->irq_work);

 return IRQ_HANDLED;
}
