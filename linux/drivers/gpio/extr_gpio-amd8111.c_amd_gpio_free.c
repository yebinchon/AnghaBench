
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct amd_gpio {scalar_t__ pm; int * orig; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ AMD_REG_GPIO (unsigned int) ;
 int dev_dbg (int *,char*,unsigned int,int ) ;
 struct amd_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void amd_gpio_free(struct gpio_chip *chip, unsigned offset)
{
 struct amd_gpio *agp = gpiochip_get_data(chip);

 dev_dbg(&agp->pdev->dev, "Freed gpio %d, data %x\n", offset, agp->orig[offset]);

 iowrite8(agp->orig[offset], agp->pm + AMD_REG_GPIO(offset));
}
