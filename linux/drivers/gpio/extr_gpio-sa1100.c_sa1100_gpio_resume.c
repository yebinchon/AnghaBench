
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sa1100_gpio_chip ;
 int sa1100_update_edge_regs (int *) ;

__attribute__((used)) static void sa1100_gpio_resume(void)
{
 sa1100_update_edge_regs(&sa1100_gpio_chip);
}
