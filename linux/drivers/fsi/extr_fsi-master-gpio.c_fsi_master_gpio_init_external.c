
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {int gpio_data; int gpio_clk; int gpio_enable; int gpio_trans; int gpio_mux; } ;


 int gpiod_direction_input (int ) ;
 int gpiod_direction_output (int ,int) ;

__attribute__((used)) static void fsi_master_gpio_init_external(struct fsi_master_gpio *master)
{
 gpiod_direction_output(master->gpio_mux, 0);
 gpiod_direction_output(master->gpio_trans, 0);
 gpiod_direction_output(master->gpio_enable, 1);
 gpiod_direction_input(master->gpio_clk);
 gpiod_direction_input(master->gpio_data);
}
