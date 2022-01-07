
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int cpuid_ebx (int) ;

__attribute__((used)) static int is_rev_g_desktop(u8 model)
{
 u32 brandidx;

 if (model < 0x69)
  return 0;

 if (model == 0xc1 || model == 0x6c || model == 0x7c)
  return 0;






 brandidx = cpuid_ebx(0x80000001);
 brandidx = (brandidx >> 9) & 0x1f;


 if ((model == 0x6f || model == 0x7f) &&
     (brandidx == 0x7 || brandidx == 0x9 || brandidx == 0xc))
  return 0;


 if (model == 0x6b &&
     (brandidx == 0xb || brandidx == 0xc))
  return 0;

 return 1;
}
