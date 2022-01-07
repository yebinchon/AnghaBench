
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_shadowed_mmio(unsigned int offset)
{
 bool ret = 0;

 if ((offset == 0x2168) ||
     (offset == 0x2140) ||
     (offset == 0x211c) ||
     (offset == 0x2114)) {
  ret = 1;
 }
 return ret;
}
