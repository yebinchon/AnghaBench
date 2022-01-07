
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;



__attribute__((used)) static s16 temp_to_s16(long val)
{
 if (val <= -128000)
  return 0x8000;
 if (val >= 127875)
  return 0x7FE0;
 if (val < 0)
  return (val - 62) / 125 * 32;
 return (val + 62) / 125 * 32;
}
