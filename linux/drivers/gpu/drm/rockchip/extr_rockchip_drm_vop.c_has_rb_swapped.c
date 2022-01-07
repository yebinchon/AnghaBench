
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;







__attribute__((used)) static bool has_rb_swapped(uint32_t format)
{
 switch (format) {
 case 128:
 case 131:
 case 129:
 case 130:
  return 1;
 default:
  return 0;
 }
}
