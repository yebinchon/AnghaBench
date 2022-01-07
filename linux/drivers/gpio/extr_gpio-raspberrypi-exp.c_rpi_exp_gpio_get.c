
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_exp_gpio {int fw; } ;
struct gpio_get_set_state {unsigned int gpio; scalar_t__ state; } ;
struct gpio_chip {int parent; } ;
typedef int get ;


 int EIO ;
 int RPI_EXP_GPIO_BASE ;
 int RPI_FIRMWARE_GET_GPIO_STATE ;
 int dev_err (int ,char*,unsigned int,int,unsigned int) ;
 struct rpi_exp_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int rpi_firmware_property (int ,int ,struct gpio_get_set_state*,int) ;

__attribute__((used)) static int rpi_exp_gpio_get(struct gpio_chip *gc, unsigned int off)
{
 struct rpi_exp_gpio *gpio;
 struct gpio_get_set_state get;
 int ret;

 gpio = gpiochip_get_data(gc);

 get.gpio = off + RPI_EXP_GPIO_BASE;
 get.state = 0;

 ret = rpi_firmware_property(gpio->fw, RPI_FIRMWARE_GET_GPIO_STATE,
      &get, sizeof(get));
 if (ret || get.gpio != 0) {
  dev_err(gc->parent,
   "Failed to get GPIO %u state (%d %x)\n", off, ret,
   get.gpio);
  return ret ? ret : -EIO;
 }
 return !!get.state;
}
