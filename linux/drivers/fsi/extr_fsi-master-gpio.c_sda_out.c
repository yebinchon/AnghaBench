
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {int gpio_data; } ;


 int gpiod_set_value (int ,int) ;

__attribute__((used)) static void sda_out(struct fsi_master_gpio *master, int value)
{
 gpiod_set_value(master->gpio_data, value);
}
