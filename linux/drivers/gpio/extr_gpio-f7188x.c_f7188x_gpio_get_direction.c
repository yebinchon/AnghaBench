
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gpio_chip {int dummy; } ;
struct f7188x_sio {int addr; } ;
struct f7188x_gpio_bank {int regbase; TYPE_1__* data; } ;
struct TYPE_2__ {struct f7188x_sio* sio; } ;


 int SIO_LD_GPIO ;
 int gpio_dir (int ) ;
 struct f7188x_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int superio_enter (int ) ;
 int superio_exit (int ) ;
 int superio_inb (int ,int ) ;
 int superio_select (int ,int ) ;

__attribute__((used)) static int f7188x_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
{
 int err;
 struct f7188x_gpio_bank *bank = gpiochip_get_data(chip);
 struct f7188x_sio *sio = bank->data->sio;
 u8 dir;

 err = superio_enter(sio->addr);
 if (err)
  return err;
 superio_select(sio->addr, SIO_LD_GPIO);

 dir = superio_inb(sio->addr, gpio_dir(bank->regbase));

 superio_exit(sio->addr);

 return !(dir & 1 << offset);
}
