
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static int is_word_sized(u16 reg)
{
 return ((((reg & 0xff00) == 0x100
       || (reg & 0xff00) == 0x200)
      && ((reg & 0x00ff) == 0x50
       || (reg & 0x00ff) == 0x53
       || (reg & 0x00ff) == 0x55))
      || (reg & 0xfff0) == 0x630
      || reg == 0x640 || reg == 0x642
      || ((reg & 0xfff0) == 0x650
   && (reg & 0x000f) >= 0x06)
      || reg == 0x73 || reg == 0x75 || reg == 0x77
  );
}
