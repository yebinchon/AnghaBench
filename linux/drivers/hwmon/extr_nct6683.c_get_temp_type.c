
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int get_temp_type(u8 src)
{
 if (src >= 0x02 && src <= 0x07)
  return 3;
 else if (src >= 0x08 && src <= 0x18)
  return 4;
 else if (src >= 0x20 && src <= 0x2b)
  return 6;
 else if (src >= 0x42 && src <= 0x49)
  return 5;

 return 0;
}
