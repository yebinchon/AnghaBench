
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;





__attribute__((used)) static umode_t nct7904_pwm_is_visible(const void *_data, u32 attr, int channel)
{
 switch (attr) {
 case 128:
 case 129:
  return 0644;
 default:
  return 0;
 }
}
