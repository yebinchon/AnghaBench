
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max14577_muic_info {int irq_adc; int irq_chg; } ;
__attribute__((used)) static int max14577_parse_irq(struct max14577_muic_info *info, int irq_type)
{
 switch (irq_type) {
 case 135:
 case 133:
 case 134:




  info->irq_adc = 1;
  return 1;
 case 131:
 case 132:
 case 129:
 case 130:
 case 128:

  info->irq_chg = 1;
  return 1;
 default:
  return 0;
 }
}
