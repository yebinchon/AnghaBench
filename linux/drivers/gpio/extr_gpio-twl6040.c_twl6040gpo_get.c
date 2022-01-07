
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl6040 {int dummy; } ;
struct gpio_chip {TYPE_1__* parent; } ;
struct TYPE_2__ {int parent; } ;


 int BIT (unsigned int) ;
 int TWL6040_REG_GPOCTL ;
 struct twl6040* dev_get_drvdata (int ) ;
 int twl6040_reg_read (struct twl6040*,int ) ;

__attribute__((used)) static int twl6040gpo_get(struct gpio_chip *chip, unsigned offset)
{
 struct twl6040 *twl6040 = dev_get_drvdata(chip->parent->parent);
 int ret = 0;

 ret = twl6040_reg_read(twl6040, TWL6040_REG_GPOCTL);
 if (ret < 0)
  return ret;

 return !!(ret & BIT(offset));
}
