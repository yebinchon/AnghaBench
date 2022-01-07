
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {int gpio_data; int gpio_trans; } ;


 int gpiod_direction_output (int ,int) ;
 int gpiod_set_value (int ,int) ;

__attribute__((used)) static void set_sda_output(struct fsi_master_gpio *master, int value)
{
 gpiod_set_value(master->gpio_trans, 1);
 gpiod_direction_output(master->gpio_data, value);
}
