
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int clear_bit (int,unsigned long*) ;

__attribute__((used)) static void tqmx86_init_irq_valid_mask(struct gpio_chip *chip,
           unsigned long *valid_mask,
           unsigned int ngpios)
{

 clear_bit(0, valid_mask);
 clear_bit(1, valid_mask);
 clear_bit(2, valid_mask);
 clear_bit(3, valid_mask);
}
