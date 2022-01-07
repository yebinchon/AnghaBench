
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct max77843_muic_info {int irq_adc; int irq_chg; int irq_work; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int virq; int irq; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int IRQ_HANDLED ;
 int dev_err (int ,char*,int) ;
 TYPE_1__* max77843_muic_irqs ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t max77843_muic_irq_handler(int irq, void *data)
{
 struct max77843_muic_info *info = data;
 int i, irq_type = -1;

 for (i = 0; i < ARRAY_SIZE(max77843_muic_irqs); i++)
  if (irq == max77843_muic_irqs[i].virq)
   irq_type = max77843_muic_irqs[i].irq;

 switch (irq_type) {
 case 143:
 case 141:
 case 142:
  info->irq_adc = 1;
  break;
 case 139:
 case 140:
 case 138:
 case 137:
 case 136:
  info->irq_chg = 1;
  break;
 case 129:
 case 128:
 case 135:
 case 134:
 case 133:
 case 130:
 case 132:
 case 131:
  break;
 default:
  dev_err(info->dev, "Cannot recognize IRQ(%d)\n", irq_type);
  break;
 }

 schedule_work(&info->irq_work);

 return IRQ_HANDLED;
}
