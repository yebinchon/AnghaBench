
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct gpio_keys_drvdata {struct gpio_button_data* data; TYPE_1__* pdata; struct input_dev* input; } ;
struct gpio_button_data {scalar_t__ gpiod; } ;
struct TYPE_2__ {int nbuttons; } ;


 int gpio_keys_gpio_report_event (struct gpio_button_data*) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void gpio_keys_report_state(struct gpio_keys_drvdata *ddata)
{
 struct input_dev *input = ddata->input;
 int i;

 for (i = 0; i < ddata->pdata->nbuttons; i++) {
  struct gpio_button_data *bdata = &ddata->data[i];
  if (bdata->gpiod)
   gpio_keys_gpio_report_event(bdata);
 }
 input_sync(input);
}
