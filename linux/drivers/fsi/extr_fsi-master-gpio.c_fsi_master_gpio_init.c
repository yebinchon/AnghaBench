
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {int gpio_data; int gpio_clk; int gpio_enable; int gpio_trans; int gpio_mux; } ;


 int FSI_INIT_CLOCKS ;
 int clock_zeros (struct fsi_master_gpio*,int ) ;
 int gpiod_direction_output (int ,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void fsi_master_gpio_init(struct fsi_master_gpio *master)
{
 unsigned long flags;

 gpiod_direction_output(master->gpio_mux, 1);
 gpiod_direction_output(master->gpio_trans, 1);
 gpiod_direction_output(master->gpio_enable, 1);
 gpiod_direction_output(master->gpio_clk, 1);
 gpiod_direction_output(master->gpio_data, 1);


 local_irq_save(flags);
 clock_zeros(master, FSI_INIT_CLOCKS);
 local_irq_restore(flags);
}
