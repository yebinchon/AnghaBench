
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;



__attribute__((used)) static inline long temp_from_reg(s16 reg)
{
 return reg * 1000 / 256;
}
