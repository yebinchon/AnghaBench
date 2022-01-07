
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int regmap; } ;
struct bd70528_gpio {TYPE_1__ chip; } ;


 int BD70528_REG_GPIO_STATE ;
 unsigned int GPIO_IN_STATE_MASK (unsigned int) ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int bd70528_gpio_get_i(struct bd70528_gpio *bdgpio, unsigned int offset)
{
 unsigned int val;
 int ret;

 ret = regmap_read(bdgpio->chip.regmap, BD70528_REG_GPIO_STATE, &val);

 if (!ret)
  ret = !(val & GPIO_IN_STATE_MASK(offset));
 else
  dev_err(bdgpio->chip.dev, "GPIO (in) state read failed\n");

 return ret;
}
