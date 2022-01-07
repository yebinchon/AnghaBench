
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gpio_chip {int dummy; } ;
struct amd_gpio {TYPE_1__* pdev; scalar_t__ pm; } ;
struct TYPE_2__ {int dev; } ;


 int AMD_GPIO_RTIN ;
 scalar_t__ AMD_REG_GPIO (unsigned int) ;
 int dev_dbg (int *,char*,unsigned int,int) ;
 struct amd_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int ioread8 (scalar_t__) ;

__attribute__((used)) static int amd_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct amd_gpio *agp = gpiochip_get_data(chip);
 u8 temp;

 temp = ioread8(agp->pm + AMD_REG_GPIO(offset));

 dev_dbg(&agp->pdev->dev, "Getting gpio %d, reg=%02x\n", offset, temp);

 return (temp & AMD_GPIO_RTIN) ? 1 : 0;
}
