
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;


 int clamp_val (long,int ,int ) ;

__attribute__((used)) static inline s8 TEMP_TO_REG(long val, s8 min, s8 max)
{
 return clamp_val((val + (val < 0 ? -500 : 500)) / 1000, min, max);
}
