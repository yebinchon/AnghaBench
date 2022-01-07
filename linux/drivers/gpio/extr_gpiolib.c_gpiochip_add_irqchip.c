
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class_key {int dummy; } ;
struct gpio_chip {int dummy; } ;



__attribute__((used)) static inline int gpiochip_add_irqchip(struct gpio_chip *gpiochip,
           struct lock_class_key *lock_key,
           struct lock_class_key *request_key)
{
 return 0;
}
