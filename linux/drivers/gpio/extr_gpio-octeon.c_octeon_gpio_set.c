
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct octeon_gpio {unsigned long long register_base; } ;
struct gpio_chip {int dummy; } ;


 unsigned long long TX_CLEAR ;
 unsigned long long TX_SET ;
 int cvmx_write_csr (unsigned long long,unsigned long long) ;
 struct octeon_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void octeon_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct octeon_gpio *gpio = gpiochip_get_data(chip);
 u64 mask = 1ull << offset;
 u64 reg = gpio->register_base + (value ? TX_SET : TX_CLEAR);
 cvmx_write_csr(reg, mask);
}
