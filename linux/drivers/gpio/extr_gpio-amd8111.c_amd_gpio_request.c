
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct amd_gpio {int* orig; TYPE_1__* pdev; scalar_t__ pm; } ;
struct TYPE_2__ {int dev; } ;


 int AMD_GPIO_DEBOUNCE ;
 int AMD_GPIO_MODE_MASK ;
 int AMD_GPIO_X_MASK ;
 scalar_t__ AMD_REG_GPIO (unsigned int) ;
 int dev_dbg (int *,char*,unsigned int,int) ;
 struct amd_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int ioread8 (scalar_t__) ;

__attribute__((used)) static int amd_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct amd_gpio *agp = gpiochip_get_data(chip);

 agp->orig[offset] = ioread8(agp->pm + AMD_REG_GPIO(offset)) &
  (AMD_GPIO_DEBOUNCE | AMD_GPIO_MODE_MASK | AMD_GPIO_X_MASK);

 dev_dbg(&agp->pdev->dev, "Requested gpio %d, data %x\n", offset, agp->orig[offset]);

 return 0;
}
