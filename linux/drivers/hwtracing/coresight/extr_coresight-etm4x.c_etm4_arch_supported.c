
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;




__attribute__((used)) static bool etm4_arch_supported(u8 arch)
{

 switch (arch & 0xf0) {
 case 128:
  break;
 default:
  return 0;
 }
 return 1;
}
