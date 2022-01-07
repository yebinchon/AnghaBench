
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s16 ;



__attribute__((used)) static inline long lm75_reg_to_mc(s16 temp, u8 resolution)
{
 return ((temp >> (16 - resolution)) * 1000) >> (resolution - 8);
}
