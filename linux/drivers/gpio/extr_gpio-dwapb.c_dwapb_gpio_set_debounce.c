
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int bgpio_lock; } ;
struct dwapb_gpio_port {struct dwapb_gpio* gpio; } ;
struct dwapb_gpio {int dummy; } ;


 unsigned long BIT (unsigned int) ;
 int GPIO_PORTA_DEBOUNCE ;
 unsigned long dwapb_read (struct dwapb_gpio*,int ) ;
 int dwapb_write (struct dwapb_gpio*,int ,unsigned long) ;
 struct dwapb_gpio_port* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dwapb_gpio_set_debounce(struct gpio_chip *gc,
       unsigned offset, unsigned debounce)
{
 struct dwapb_gpio_port *port = gpiochip_get_data(gc);
 struct dwapb_gpio *gpio = port->gpio;
 unsigned long flags, val_deb;
 unsigned long mask = BIT(offset);

 spin_lock_irqsave(&gc->bgpio_lock, flags);

 val_deb = dwapb_read(gpio, GPIO_PORTA_DEBOUNCE);
 if (debounce)
  dwapb_write(gpio, GPIO_PORTA_DEBOUNCE, val_deb | mask);
 else
  dwapb_write(gpio, GPIO_PORTA_DEBOUNCE, val_deb & ~mask);

 spin_unlock_irqrestore(&gc->bgpio_lock, flags);

 return 0;
}
