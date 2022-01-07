
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max14577_muic_info {int irq_adc; int irq_chg; } ;




 scalar_t__ max14577_parse_irq (struct max14577_muic_info*,int) ;

__attribute__((used)) static int max77836_parse_irq(struct max14577_muic_info *info, int irq_type)
{

 if (max14577_parse_irq(info, irq_type))
  return 1;

 switch (irq_type) {
 case 129:
  info->irq_adc = 1;
  return 1;
 case 128:

  info->irq_chg = 1;
  return 1;
 default:
  return 0;
 }
}
