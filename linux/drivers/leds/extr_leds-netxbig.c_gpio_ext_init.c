
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct netxbig_gpio_ext {int num_addr; int num_data; int enable; int * data; int * addr; } ;


 int EINVAL ;
 int GPIOF_OUT_INIT_LOW ;
 int devm_gpio_request_one (int *,int ,int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int gpio_ext_init(struct platform_device *pdev,
    struct netxbig_gpio_ext *gpio_ext)
{
 int err;
 int i;

 if (unlikely(!gpio_ext))
  return -EINVAL;


 for (i = 0; i < gpio_ext->num_addr; i++) {
  err = devm_gpio_request_one(&pdev->dev, gpio_ext->addr[i],
         GPIOF_OUT_INIT_LOW,
         "GPIO extension addr");
  if (err)
   return err;
 }

 for (i = 0; i < gpio_ext->num_data; i++) {
  err = devm_gpio_request_one(&pdev->dev, gpio_ext->data[i],
         GPIOF_OUT_INIT_LOW,
         "GPIO extension data");
  if (err)
   return err;
 }

 err = devm_gpio_request_one(&pdev->dev, gpio_ext->enable,
        GPIOF_OUT_INIT_LOW,
        "GPIO extension enable");
 if (err)
  return err;

 return 0;
}
