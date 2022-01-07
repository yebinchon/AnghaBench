
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 temp_to_u8(long val)
{
 if (val <= 0)
  return 0;
 if (val >= 255000)
  return 255;
 return (val + 500) / 1000;
}
