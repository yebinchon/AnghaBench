
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct gpio_keys_platform_data {int (* disable ) (int ) ;} ;
struct gpio_keys_drvdata {struct gpio_keys_platform_data* pdata; } ;


 struct gpio_keys_drvdata* input_get_drvdata (struct input_dev*) ;
 int stub1 (int ) ;

__attribute__((used)) static void gpio_keys_close(struct input_dev *input)
{
 struct gpio_keys_drvdata *ddata = input_get_drvdata(input);
 const struct gpio_keys_platform_data *pdata = ddata->pdata;

 if (pdata->disable)
  pdata->disable(input->dev.parent);
}
