
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int clamp_val (int,int,int) ;

__attribute__((used)) static inline u16 FAN_TO_REG(unsigned long val)
{
 if (!val)
  return 0xffff;
 return clamp_val(5400000 / val, 1, 0xfffe);
}
