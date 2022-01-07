
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int (* init_valid_mask ) (struct gpio_chip*,int ,int ) ;int ngpio; int valid_mask; } ;


 int stub1 (struct gpio_chip*,int ,int ) ;

__attribute__((used)) static int gpiochip_init_valid_mask(struct gpio_chip *gc)
{
 if (gc->init_valid_mask)
  return gc->init_valid_mask(gc,
        gc->valid_mask,
        gc->ngpio);

 return 0;
}
