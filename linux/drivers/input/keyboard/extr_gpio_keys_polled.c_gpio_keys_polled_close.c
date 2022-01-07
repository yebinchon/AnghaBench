
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {struct gpio_keys_polled_dev* private; } ;
struct gpio_keys_polled_dev {int dev; struct gpio_keys_platform_data* pdata; } ;
struct gpio_keys_platform_data {int (* disable ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void gpio_keys_polled_close(struct input_polled_dev *dev)
{
 struct gpio_keys_polled_dev *bdev = dev->private;
 const struct gpio_keys_platform_data *pdata = bdev->pdata;

 if (pdata->disable)
  pdata->disable(bdev->dev);
}
