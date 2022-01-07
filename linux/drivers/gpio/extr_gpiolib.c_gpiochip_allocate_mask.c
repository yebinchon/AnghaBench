
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int ngpio; } ;


 int GFP_KERNEL ;
 unsigned long* bitmap_alloc (int ,int ) ;
 int bitmap_fill (unsigned long*,int ) ;

__attribute__((used)) static unsigned long *gpiochip_allocate_mask(struct gpio_chip *chip)
{
 unsigned long *p;

 p = bitmap_alloc(chip->ngpio, GFP_KERNEL);
 if (!p)
  return ((void*)0);


 bitmap_fill(p, chip->ngpio);

 return p;
}
