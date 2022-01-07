
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ctrl_register { ____Placeholder_ctrl_register } ctrl_register ;


 int CRYSTALCOVE_GPIO_NUM ;
 int CTRL_IN ;
 int EOPNOTSUPP ;
 int GPIO0P0CTLI ;
 int GPIO0P0CTLO ;
 int GPIO1P0CTLI ;
 int GPIO1P0CTLO ;
 int GPIOPANELCTL ;

__attribute__((used)) static inline int to_reg(int gpio, enum ctrl_register reg_type)
{
 int reg;

 if (gpio >= CRYSTALCOVE_GPIO_NUM) {




  switch (gpio) {
  case 0x5e:
   return GPIOPANELCTL;
  default:
   return -EOPNOTSUPP;
  }
 }

 if (reg_type == CTRL_IN) {
  if (gpio < 8)
   reg = GPIO0P0CTLI;
  else
   reg = GPIO1P0CTLI;
 } else {
  if (gpio < 8)
   reg = GPIO0P0CTLO;
  else
   reg = GPIO1P0CTLO;
 }

 return reg + gpio % 8;
}
