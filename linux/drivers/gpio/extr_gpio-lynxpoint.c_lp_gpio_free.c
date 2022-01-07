
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp_gpio {TYPE_1__* pdev; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int GPINDIS_BIT ;
 int LP_CONFIG2 ;
 struct lp_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int inl (unsigned long) ;
 unsigned long lp_gpio_reg (struct gpio_chip*,unsigned int,int ) ;
 int outl (int,unsigned long) ;
 int pm_runtime_put (int *) ;

__attribute__((used)) static void lp_gpio_free(struct gpio_chip *chip, unsigned offset)
{
 struct lp_gpio *lg = gpiochip_get_data(chip);
 unsigned long conf2 = lp_gpio_reg(chip, offset, LP_CONFIG2);


 outl(inl(conf2) | GPINDIS_BIT, conf2);

 pm_runtime_put(&lg->pdev->dev);
}
