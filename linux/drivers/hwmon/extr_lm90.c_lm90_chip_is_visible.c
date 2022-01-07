
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;





__attribute__((used)) static umode_t lm90_chip_is_visible(const void *data, u32 attr, int channel)
{
 switch (attr) {
 case 128:
  return 0644;
 case 129:
  return 0444;
 default:
  return 0;
 }
}
