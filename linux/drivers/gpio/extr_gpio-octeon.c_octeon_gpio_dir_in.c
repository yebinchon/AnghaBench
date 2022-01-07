
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_gpio {scalar_t__ register_base; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ bit_cfg_reg (unsigned int) ;
 int cvmx_write_csr (scalar_t__,int ) ;
 struct octeon_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int octeon_gpio_dir_in(struct gpio_chip *chip, unsigned offset)
{
 struct octeon_gpio *gpio = gpiochip_get_data(chip);

 cvmx_write_csr(gpio->register_base + bit_cfg_reg(offset), 0);
 return 0;
}
