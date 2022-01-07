
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int TMP401_CONFIG_RANGE ;

__attribute__((used)) static int tmp401_register_to_temp(u16 reg, u8 config)
{
 int temp = reg;

 if (config & TMP401_CONFIG_RANGE)
  temp -= 64 * 256;

 return DIV_ROUND_CLOSEST(temp * 125, 32);
}
