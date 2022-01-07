
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int hdmi_mode_clock_to_hz(unsigned int clock)
{
 switch (clock) {
 case 25175:
  return 25174825;
 case 74176:
  return 74175824;
 case 148352:
  return 148351648;
 case 296703:
  return 296703297;
 default:
  return clock * 1000;
 }
}
