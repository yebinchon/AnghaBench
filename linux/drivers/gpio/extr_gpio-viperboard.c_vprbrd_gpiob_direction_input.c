
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vprbrd_gpio {int gpiob_out; struct vprbrd* vb; } ;
struct vprbrd {int lock; } ;
struct gpio_chip {int parent; } ;


 int dev_err (int ,char*) ;
 struct vprbrd_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vprbrd_gpiob_setdir (struct vprbrd*,unsigned int,int ) ;

__attribute__((used)) static int vprbrd_gpiob_direction_input(struct gpio_chip *chip,
   unsigned int offset)
{
 int ret;
 struct vprbrd_gpio *gpio = gpiochip_get_data(chip);
 struct vprbrd *vb = gpio->vb;

 gpio->gpiob_out &= ~(1 << offset);

 mutex_lock(&vb->lock);

 ret = vprbrd_gpiob_setdir(vb, offset, 0);

 mutex_unlock(&vb->lock);

 if (ret)
  dev_err(chip->parent, "usb error setting pin to input\n");

 return ret;
}
