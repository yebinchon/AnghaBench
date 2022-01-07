
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct gen_74x164_chip {int registers; int buffer; TYPE_1__ gpio_chip; } ;


 int spi_write (int ,int ,int ) ;
 int to_spi_device (int ) ;

__attribute__((used)) static int __gen_74x164_write_config(struct gen_74x164_chip *chip)
{
 return spi_write(to_spi_device(chip->gpio_chip.parent), chip->buffer,
    chip->registers);
}
