
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned command_2_index(u8 c, u8 sc)
{
 if (c & 0x80)
  c = 0x9 + (c & 0x0f);
 else if (c == 0x41)
  c = 0x9 + 0x1;
 if (c > 0x18)
  c = 0x00;
 return (sc & 3) * (0x9 + 0x9) + c;
}
