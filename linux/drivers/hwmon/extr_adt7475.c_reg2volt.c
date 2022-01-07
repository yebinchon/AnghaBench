
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int DIV_ROUND_CLOSEST (int,int const) ;
 int** adt7473_in_scaling ;

__attribute__((used)) static inline int reg2volt(int channel, u16 reg, u8 bypass_attn)
{
 const int *r = adt7473_in_scaling[channel];

 if (bypass_attn & (1 << channel))
  return DIV_ROUND_CLOSEST(reg * 2250, 1024);
 return DIV_ROUND_CLOSEST(reg * (r[0] + r[1]) * 2250, r[1] * 1024);
}
