
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt8973a_muic_info {int num_muic_irqs; int irq_attach; int irq_detach; int irq_ovp; int irq_otp; int irq_work; int dev; TYPE_1__* muic_irqs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int virq; int irq; } ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t rt8973a_muic_irq_handler(int irq, void *data)
{
 struct rt8973a_muic_info *info = data;
 int i, irq_type = -1;

 for (i = 0; i < info->num_muic_irqs; i++)
  if (irq == info->muic_irqs[i].virq)
   irq_type = info->muic_irqs[i].irq;

 switch (irq_type) {
 case 141:
  info->irq_attach = 1;
  break;
 case 137:
  info->irq_detach = 1;
  break;
 case 135:
  info->irq_ovp = 1;
  break;
 case 136:
  info->irq_otp = 1;
  break;
 case 140:
 case 138:
 case 139:
 case 142:
 case 128:
 case 129:
 case 132:
 case 131:
 case 133:
 case 134:
 case 130:
 default:
  dev_dbg(info->dev,
   "Cannot handle this interrupt (%d)\n", irq_type);
  break;
 }

 schedule_work(&info->irq_work);

 return IRQ_HANDLED;
}
