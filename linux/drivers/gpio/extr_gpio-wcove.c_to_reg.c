
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ctrl_register { ____Placeholder_ctrl_register } ctrl_register ;


 int CTRL_IN ;
 int EOPNOTSUPP ;
 int GPIO_IN_CTRL_BASE ;
 int GPIO_OUT_CTRL_BASE ;
 int WCOVE_GPIO_NUM ;

__attribute__((used)) static inline int to_reg(int gpio, enum ctrl_register reg_type)
{
 unsigned int reg;

 if (gpio >= WCOVE_GPIO_NUM)
  return -EOPNOTSUPP;

 if (reg_type == CTRL_IN)
  reg = GPIO_IN_CTRL_BASE + gpio;
 else
  reg = GPIO_OUT_CTRL_BASE + gpio;

 return reg;
}
