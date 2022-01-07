
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc {int pin_data; int pin_clock; } ;


 int dal_gpio_close (int ) ;

void dal_ddc_close(
 struct ddc *ddc)
{
 dal_gpio_close(ddc->pin_clock);
 dal_gpio_close(ddc->pin_data);
}
