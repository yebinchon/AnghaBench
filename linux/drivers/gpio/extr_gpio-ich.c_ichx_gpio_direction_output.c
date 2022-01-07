
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_4__ {TYPE_1__* desc; } ;
struct TYPE_3__ {scalar_t__ have_blink; } ;


 int GPIO_IO_SEL ;
 int GPIO_LVL ;
 int GPO_BLINK ;
 TYPE_2__ ichx_priv ;
 int ichx_write_bit (int ,unsigned int,int,int) ;

__attribute__((used)) static int ichx_gpio_direction_output(struct gpio_chip *gpio, unsigned nr,
     int val)
{

 if (nr < 32 && ichx_priv.desc->have_blink)
  ichx_write_bit(GPO_BLINK, nr, 0, 0);


 ichx_write_bit(GPIO_LVL, nr, val, 0);





 return ichx_write_bit(GPIO_IO_SEL, nr, 0, 1);
}
