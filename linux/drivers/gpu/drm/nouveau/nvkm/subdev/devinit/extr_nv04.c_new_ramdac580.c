
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
new_ramdac580(uint32_t reg1, bool ss, uint32_t ramdac580)
{
 bool head_a = (reg1 == 0x680508);

 if (ss)
  ramdac580 |= head_a ? 0x00000100 : 0x10000000;
 else
  ramdac580 &= head_a ? 0xfffffeff : 0xefffffff;

 return ramdac580;
}
