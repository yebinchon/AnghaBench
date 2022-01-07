
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct gpio_service {int** busyness; } ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;



__attribute__((used)) static bool is_pin_busy(
 const struct gpio_service *service,
 enum gpio_id id,
 uint32_t en)
{
 return service->busyness[id][en];
}
