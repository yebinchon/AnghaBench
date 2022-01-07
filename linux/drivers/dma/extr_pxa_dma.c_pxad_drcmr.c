
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int pxad_drcmr(unsigned int line)
{
 if (line < 64)
  return 0x100 + line * 4;
 return 0x1000 + line * 4;
}
