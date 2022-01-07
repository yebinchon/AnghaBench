
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx711_data {int gain_set; int gpiod_dout; } ;


 int EIO ;
 int gpiod_get_value (int ) ;
 int hx711_cycle (struct hx711_data*) ;
 int hx711_get_gain_to_pulse (int ) ;

__attribute__((used)) static int hx711_read(struct hx711_data *hx711_data)
{
 int i, ret;
 int value = 0;
 int val = gpiod_get_value(hx711_data->gpiod_dout);


 if (val)
  return -EIO;

 for (i = 0; i < 24; i++) {
  value <<= 1;
  ret = hx711_cycle(hx711_data);
  if (ret)
   value++;
 }

 value ^= 0x800000;

 for (i = 0; i < hx711_get_gain_to_pulse(hx711_data->gain_set); i++)
  hx711_cycle(hx711_data);

 return value;
}
