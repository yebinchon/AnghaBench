
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc {int pin_data; } ;
typedef enum gpio_ddc_line { ____Placeholder_gpio_ddc_line } gpio_ddc_line ;


 int dal_gpio_get_enum (int ) ;

enum gpio_ddc_line dal_ddc_get_line(
 const struct ddc *ddc)
{
 return (enum gpio_ddc_line)dal_gpio_get_enum(ddc->pin_data);
}
