
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 fan_to_reg(long rpm)
{





 if (rpm < 367)
  return 0xfff;
 return 1500000 / rpm;
}
