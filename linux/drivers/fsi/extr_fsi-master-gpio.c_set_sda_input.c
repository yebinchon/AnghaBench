
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {int gpio_trans; int gpio_data; } ;


 int gpiod_direction_input (int ) ;
 int gpiod_set_value (int ,int ) ;

__attribute__((used)) static void set_sda_input(struct fsi_master_gpio *master)
{
 gpiod_direction_input(master->gpio_data);
 gpiod_set_value(master->gpio_trans, 0);
}
