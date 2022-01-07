
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static u32 sumo_power_of_4(u32 unit)
{
 u32 ret = 1;
 u32 i;

 for (i = 0; i < unit; i++)
  ret *= 4;

 return ret;
}
