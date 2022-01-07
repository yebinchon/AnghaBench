
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_exp_gpio {int fw; } ;
struct gpio_get_set_state {unsigned int gpio; int state; } ;
struct gpio_chip {int parent; } ;
typedef int set ;


 int RPI_EXP_GPIO_BASE ;
 int RPI_FIRMWARE_SET_GPIO_STATE ;
 int dev_err (int ,char*,unsigned int,int,unsigned int) ;
 struct rpi_exp_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int rpi_firmware_property (int ,int ,struct gpio_get_set_state*,int) ;

__attribute__((used)) static void rpi_exp_gpio_set(struct gpio_chip *gc, unsigned int off, int val)
{
 struct rpi_exp_gpio *gpio;
 struct gpio_get_set_state set;
 int ret;

 gpio = gpiochip_get_data(gc);

 set.gpio = off + RPI_EXP_GPIO_BASE;
 set.state = val;

 ret = rpi_firmware_property(gpio->fw, RPI_FIRMWARE_SET_GPIO_STATE,
      &set, sizeof(set));
 if (ret || set.gpio != 0)
  dev_err(gc->parent,
   "Failed to set GPIO %u state (%d %x)\n", off, ret,
   set.gpio);
}
