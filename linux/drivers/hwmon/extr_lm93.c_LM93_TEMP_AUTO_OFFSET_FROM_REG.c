
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LM93_TEMP_OFFSET_FROM_REG (int,int) ;

__attribute__((used)) static int LM93_TEMP_AUTO_OFFSET_FROM_REG(u8 reg, int nr, int mode)
{

 if (nr < 2)
  return LM93_TEMP_OFFSET_FROM_REG(reg & 0x0f, mode);


 else
  return LM93_TEMP_OFFSET_FROM_REG(reg >> 4 & 0x0f, mode);
}
