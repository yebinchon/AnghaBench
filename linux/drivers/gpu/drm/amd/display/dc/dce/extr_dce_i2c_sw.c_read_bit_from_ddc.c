
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ddc {int pin_clock; int pin_data; } ;


 int dal_gpio_get_value (int ,scalar_t__*) ;

__attribute__((used)) static inline bool read_bit_from_ddc(
 struct ddc *ddc,
 bool data_nor_clock)
{
 uint32_t value = 0;

 if (data_nor_clock)
  dal_gpio_get_value(ddc->pin_data, &value);
 else
  dal_gpio_get_value(ddc->pin_clock, &value);

 return (value != 0);
}
