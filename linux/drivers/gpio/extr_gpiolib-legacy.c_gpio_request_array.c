
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio {int gpio; int label; int flags; } ;


 int gpio_free (int ) ;
 int gpio_request_one (int ,int ,int ) ;

int gpio_request_array(const struct gpio *array, size_t num)
{
 int i, err;

 for (i = 0; i < num; i++, array++) {
  err = gpio_request_one(array->gpio, array->flags, array->label);
  if (err)
   goto err_free;
 }
 return 0;

err_free:
 while (i--)
  gpio_free((--array)->gpio);
 return err;
}
