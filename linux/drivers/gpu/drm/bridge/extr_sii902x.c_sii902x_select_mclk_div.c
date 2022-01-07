
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (int*) ;
 unsigned int abs (int) ;
 int* sii902x_mclk_div_table ;

__attribute__((used)) static int sii902x_select_mclk_div(u8 *i2s_config_reg, unsigned int rate,
       unsigned int mclk)
{
 int div = mclk / rate;
 int distance = 100000;
 u8 i, nearest = 0;

 for (i = 0; i < ARRAY_SIZE(sii902x_mclk_div_table); i++) {
  unsigned int d = abs(div - sii902x_mclk_div_table[i]);

  if (d >= distance)
   continue;

  nearest = i;
  distance = d;
  if (d == 0)
   break;
 }

 *i2s_config_reg |= nearest << 4;

 return sii902x_mclk_div_table[nearest];
}
