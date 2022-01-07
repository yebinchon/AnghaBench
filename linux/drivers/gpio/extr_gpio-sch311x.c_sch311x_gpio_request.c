
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sch311x_gpio_block {scalar_t__* config_regs; scalar_t__ runtime_reg; } ;
struct gpio_chip {int parent; } ;


 int DRV_NAME ;
 int EBUSY ;
 int ENODEV ;
 int dev_err (int ,char*,scalar_t__) ;
 struct sch311x_gpio_block* gpiochip_get_data (struct gpio_chip*) ;
 int request_region (scalar_t__,int,int ) ;

__attribute__((used)) static int sch311x_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct sch311x_gpio_block *block = gpiochip_get_data(chip);

 if (block->config_regs[offset] == 0)
  return -ENODEV;

 if (!request_region(block->runtime_reg + block->config_regs[offset],
       1, DRV_NAME)) {
  dev_err(chip->parent, "Failed to request region 0x%04x.\n",
   block->runtime_reg + block->config_regs[offset]);
  return -EBUSY;
 }
 return 0;
}
