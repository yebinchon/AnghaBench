
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 unsigned long DIV_ROUND_UP (int,int) ;
 scalar_t__ DIV_ROUND_UP_ULL (int,int) ;
 int* apds9300_lux_ratio ;

__attribute__((used)) static unsigned long apds9300_calculate_lux(u16 ch0, u16 ch1)
{
 unsigned long lux, tmp;


 if (ch0 == 0)
  return 0;

 tmp = DIV_ROUND_UP(ch1 * 100, ch0);
 if (tmp <= 52) {
  lux = 3150 * ch0 - (unsigned long)DIV_ROUND_UP_ULL(ch0
    * apds9300_lux_ratio[tmp] * 5930ull, 1000);
 } else if (tmp <= 65) {
  lux = 2290 * ch0 - 2910 * ch1;
 } else if (tmp <= 80) {
  lux = 1570 * ch0 - 1800 * ch1;
 } else if (tmp <= 130) {
  lux = 338 * ch0 - 260 * ch1;
 } else {
  lux = 0;
 }

 return lux / 100000;
}
