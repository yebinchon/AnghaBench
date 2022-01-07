
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxbig_gpio_ext {int dummy; } ;


 int gpio_ext_enable_select (struct netxbig_gpio_ext*) ;
 int gpio_ext_lock ;
 int gpio_ext_set_addr (struct netxbig_gpio_ext*,int) ;
 int gpio_ext_set_data (struct netxbig_gpio_ext*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gpio_ext_set_value(struct netxbig_gpio_ext *gpio_ext,
          int addr, int value)
{
 unsigned long flags;

 spin_lock_irqsave(&gpio_ext_lock, flags);
 gpio_ext_set_addr(gpio_ext, addr);
 gpio_ext_set_data(gpio_ext, value);
 gpio_ext_enable_select(gpio_ext);
 spin_unlock_irqrestore(&gpio_ext_lock, flags);
}
