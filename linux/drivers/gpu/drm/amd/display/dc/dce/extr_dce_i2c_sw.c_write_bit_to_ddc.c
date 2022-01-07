
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ddc {int pin_clock; int pin_data; } ;


 int dal_gpio_set_value (int ,int) ;

__attribute__((used)) static inline void write_bit_to_ddc(
 struct ddc *ddc,
 bool data_nor_clock,
 bool bit)
{
 uint32_t value = bit ? 1 : 0;

 if (data_nor_clock)
  dal_gpio_set_value(ddc->pin_data, value);
 else
  dal_gpio_set_value(ddc->pin_clock, value);
}
