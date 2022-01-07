
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct dln2_gpio_pin_val {unsigned int value; int pin; } ;
struct dln2_gpio {int output_enabled; int pdev; } ;
typedef int req ;


 unsigned int DLN2_GPIO_DIRECTION_OUT ;
 int DLN2_GPIO_PIN_SET_DIRECTION ;
 int clear_bit (unsigned int,int ) ;
 int cpu_to_le16 (unsigned int) ;
 int dln2_transfer_tx (int ,int ,struct dln2_gpio_pin_val*,int) ;
 struct dln2_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int set_bit (unsigned int,int ) ;

__attribute__((used)) static int dln2_gpio_set_direction(struct gpio_chip *chip, unsigned offset,
       unsigned dir)
{
 struct dln2_gpio *dln2 = gpiochip_get_data(chip);
 struct dln2_gpio_pin_val req = {
  .pin = cpu_to_le16(offset),
  .value = dir,
 };
 int ret;

 ret = dln2_transfer_tx(dln2->pdev, DLN2_GPIO_PIN_SET_DIRECTION,
          &req, sizeof(req));
 if (ret < 0)
  return ret;

 if (dir == DLN2_GPIO_DIRECTION_OUT)
  set_bit(offset, dln2->output_enabled);
 else
  clear_bit(offset, dln2->output_enabled);

 return ret;
}
