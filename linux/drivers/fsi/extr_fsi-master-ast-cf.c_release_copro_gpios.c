
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_acf {int gpio_trans; int gpio_data; int gpio_clk; } ;


 int aspeed_gpio_copro_release_gpio (int ) ;

__attribute__((used)) static void release_copro_gpios(struct fsi_master_acf *master)
{
 aspeed_gpio_copro_release_gpio(master->gpio_clk);
 aspeed_gpio_copro_release_gpio(master->gpio_data);
 aspeed_gpio_copro_release_gpio(master->gpio_trans);
}
