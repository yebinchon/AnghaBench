
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int LM75_TEMP_FROM_REG (int ) ;
 int TEMP_FROM_REG (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int sprintf_temp_from_reg(u16 reg, char *buf, int nr)
{
 int ret = 0;

 switch (nr) {
 case 1: case 2:
  ret = sprintf(buf, "%d\n", LM75_TEMP_FROM_REG(reg));
  break;
 case 0: case 3: default:
  ret = sprintf(buf, "%d\n", TEMP_FROM_REG(reg));
  break;
 }
 return ret;
}
