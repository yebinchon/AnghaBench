
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_descs {unsigned int ndescs; int * desc; } ;


 int gpiod_put (int ) ;
 int kfree (struct gpio_descs*) ;

void gpiod_put_array(struct gpio_descs *descs)
{
 unsigned int i;

 for (i = 0; i < descs->ndescs; i++)
  gpiod_put(descs->desc[i]);

 kfree(descs);
}
