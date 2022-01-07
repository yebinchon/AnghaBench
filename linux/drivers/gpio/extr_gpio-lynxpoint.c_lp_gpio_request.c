
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp_gpio {TYPE_1__* pdev; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (unsigned int) ;
 int EBUSY ;
 int ENODEV ;
 int GPINDIS_BIT ;
 int LP_ACPI_OWNED ;
 int LP_CONFIG1 ;
 int LP_CONFIG2 ;
 int USE_SEL_BIT ;
 int dev_err (int *,char*,unsigned int) ;
 struct lp_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int inl (unsigned long) ;
 unsigned long lp_gpio_reg (struct gpio_chip*,unsigned int,int ) ;
 int outl (int,unsigned long) ;
 int pm_runtime_get (int *) ;

__attribute__((used)) static int lp_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct lp_gpio *lg = gpiochip_get_data(chip);
 unsigned long reg = lp_gpio_reg(chip, offset, LP_CONFIG1);
 unsigned long conf2 = lp_gpio_reg(chip, offset, LP_CONFIG2);
 unsigned long acpi_use = lp_gpio_reg(chip, offset, LP_ACPI_OWNED);

 pm_runtime_get(&lg->pdev->dev);


 if (!(inl(acpi_use) & BIT(offset % 32))) {
  dev_err(&lg->pdev->dev, "gpio %d reserved for ACPI\n", offset);
  return -EBUSY;
 }

 if (!(inl(reg) & USE_SEL_BIT))
  return -ENODEV;


 outl(inl(conf2) & ~GPINDIS_BIT, conf2);


 return 0;
}
