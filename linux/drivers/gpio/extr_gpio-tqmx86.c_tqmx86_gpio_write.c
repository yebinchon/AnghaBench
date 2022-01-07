
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tqmx86_gpio_data {scalar_t__ io_base; } ;


 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void tqmx86_gpio_write(struct tqmx86_gpio_data *gd, u8 val,
         unsigned int reg)
{
 iowrite8(val, gd->io_base + reg);
}
