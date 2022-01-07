
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {int t_echo_delay; } ;


 int clock_zeros (struct fsi_master_gpio*,int ) ;

__attribute__((used)) static void echo_delay(struct fsi_master_gpio *master)
{
 clock_zeros(master, master->t_echo_delay);
}
