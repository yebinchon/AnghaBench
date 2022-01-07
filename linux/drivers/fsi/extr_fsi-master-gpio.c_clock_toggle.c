
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {int gpio_clk; int no_delays; } ;


 int FSI_GPIO_STD_DLY ;
 int gpiod_set_value (int ,int) ;
 int ndelay (int ) ;

__attribute__((used)) static void clock_toggle(struct fsi_master_gpio *master, int count)
{
 int i;

 for (i = 0; i < count; i++) {
  if (!master->no_delays)
   ndelay(FSI_GPIO_STD_DLY);
  gpiod_set_value(master->gpio_clk, 0);
  if (!master->no_delays)
   ndelay(FSI_GPIO_STD_DLY);
  gpiod_set_value(master->gpio_clk, 1);
 }
}
