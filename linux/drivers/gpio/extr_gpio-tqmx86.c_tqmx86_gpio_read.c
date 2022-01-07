
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tqmx86_gpio_data {scalar_t__ io_base; } ;


 int ioread8 (scalar_t__) ;

__attribute__((used)) static u8 tqmx86_gpio_read(struct tqmx86_gpio_data *gd, unsigned int reg)
{
 return ioread8(gd->io_base + reg);
}
