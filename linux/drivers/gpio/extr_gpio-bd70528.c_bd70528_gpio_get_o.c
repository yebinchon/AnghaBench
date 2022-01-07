
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int regmap; } ;
struct bd70528_gpio {TYPE_1__ chip; } ;


 unsigned int BD70528_GPIO_OUT_MASK ;
 int GPIO_OUT_REG (unsigned int) ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int bd70528_gpio_get_o(struct bd70528_gpio *bdgpio, unsigned int offset)
{
 int ret;
 unsigned int val;

 ret = regmap_read(bdgpio->chip.regmap, GPIO_OUT_REG(offset), &val);
 if (!ret)
  ret = !!(val & BD70528_GPIO_OUT_MASK);
 else
  dev_err(bdgpio->chip.dev, "GPIO (out) state read failed\n");

 return ret;
}
