
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16 ina209_reg_from_interval(u16 config, long interval)
{
 int i, adc;

 if (interval <= 0) {
  adc = 8;
 } else {
  adc = 15;
  for (i = 34 + 34 / 2; i; i >>= 1) {
   if (i < interval)
    break;
   adc--;
  }
 }
 return (config & 0xf807) | (adc << 3) | (adc << 7);
}
