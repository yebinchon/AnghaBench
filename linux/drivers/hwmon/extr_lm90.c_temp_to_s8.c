
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;



__attribute__((used)) static s8 temp_to_s8(long val)
{
 if (val <= -128000)
  return -128;
 if (val >= 127000)
  return 127;
 if (val < 0)
  return (val - 500) / 1000;
 return (val + 500) / 1000;
}
