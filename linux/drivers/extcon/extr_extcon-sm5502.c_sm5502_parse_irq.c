
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm5502_muic_info {int irq_attach; int irq_detach; } ;
__attribute__((used)) static int sm5502_parse_irq(struct sm5502_muic_info *info, int irq_type)
{
 switch (irq_type) {
 case 141:
  info->irq_attach = 1;
  break;
 case 140:
  info->irq_detach = 1;
  break;
 case 139:
 case 138:
 case 137:
 case 135:
 case 136:
 case 134:
 case 128:
 case 131:
 case 133:
 case 130:
 case 129:
 case 132:
 default:
  break;
 }

 return 0;
}
