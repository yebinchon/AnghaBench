
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {int gpio_clk; int no_delays; int gpio_data; } ;


 int FSI_GPIO_STD_DLY ;
 int gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;
 int ndelay (int ) ;

__attribute__((used)) static int sda_clock_in(struct fsi_master_gpio *master)
{
 int in;

 if (!master->no_delays)
  ndelay(FSI_GPIO_STD_DLY);
 gpiod_set_value(master->gpio_clk, 0);


 gpiod_get_value(master->gpio_data);


 in = gpiod_get_value(master->gpio_data);
 if (!master->no_delays)
  ndelay(FSI_GPIO_STD_DLY);
 gpiod_set_value(master->gpio_clk, 1);
 return in ? 1 : 0;
}
