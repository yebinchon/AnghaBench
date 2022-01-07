
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* lm93_spinup_time_map ;

__attribute__((used)) static int LM93_SPINUP_TIME_FROM_REG(u8 reg)
{
 return lm93_spinup_time_map[reg >> 5 & 0x07];
}
