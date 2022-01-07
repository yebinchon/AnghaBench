
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int (* set ) (struct gpio_chip*,unsigned int,int) ;} ;


 int stub1 (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int bgpio_simple_dir_out(struct gpio_chip *gc, unsigned int gpio,
    int val)
{
 gc->set(gc, gpio, val);

 return 0;
}
