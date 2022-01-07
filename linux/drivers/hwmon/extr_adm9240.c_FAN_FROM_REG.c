
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned int SCALE (int,int,int) ;

__attribute__((used)) static inline unsigned int FAN_FROM_REG(u8 reg, u8 div)
{
 if (!reg)
  return -1;

 if (reg == 255)
  return 0;

 return SCALE(1350000, 1, reg * div);
}
