
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct max14577_muic_info {int muic_irqs_num; int irq_work; int dev; TYPE_2__* max14577; TYPE_1__* muic_irqs; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int dev_type; } ;
struct TYPE_3__ {int virq; int irq; } ;


 int IRQ_HANDLED ;


 int dev_err (int ,char*,int) ;
 int max14577_parse_irq (struct max14577_muic_info*,int) ;
 int max77836_parse_irq (struct max14577_muic_info*,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t max14577_muic_irq_handler(int irq, void *data)
{
 struct max14577_muic_info *info = data;
 int i, irq_type = -1;
 bool irq_parsed;







 for (i = 0; i < info->muic_irqs_num; i++)
  if (irq == info->muic_irqs[i].virq)
   irq_type = info->muic_irqs[i].irq;

 switch (info->max14577->dev_type) {
 case 128:
  irq_parsed = max77836_parse_irq(info, irq_type);
  break;
 case 129:
 default:
  irq_parsed = max14577_parse_irq(info, irq_type);
  break;
 }

 if (!irq_parsed) {
  dev_err(info->dev, "muic interrupt: irq %d occurred, skipped\n",
    irq_type);
  return IRQ_HANDLED;
 }
 schedule_work(&info->irq_work);

 return IRQ_HANDLED;
}
