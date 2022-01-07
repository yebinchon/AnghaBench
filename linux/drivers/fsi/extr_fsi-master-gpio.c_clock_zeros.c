
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {int dummy; } ;


 int clock_toggle (struct fsi_master_gpio*,int) ;
 int set_sda_output (struct fsi_master_gpio*,int) ;
 int trace_fsi_master_gpio_clock_zeros (struct fsi_master_gpio*,int) ;

__attribute__((used)) static void clock_zeros(struct fsi_master_gpio *master, int count)
{
 trace_fsi_master_gpio_clock_zeros(master, count);
 set_sda_output(master, 1);
 clock_toggle(master, count);
}
