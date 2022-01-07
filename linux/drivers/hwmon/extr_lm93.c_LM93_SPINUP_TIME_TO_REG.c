
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* lm93_spinup_time_map ;

__attribute__((used)) static u8 LM93_SPINUP_TIME_TO_REG(int time)
{
 int i;
 for (i = 0; i < 7; i++)
  if (time <= lm93_spinup_time_map[i])
   break;


 return (u8)i;
}
