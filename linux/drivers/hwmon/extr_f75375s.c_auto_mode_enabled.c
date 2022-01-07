
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int WARN (int,char*,int) ;

__attribute__((used)) static bool auto_mode_enabled(u8 pwm_enable)
{
 switch (pwm_enable) {
 case 0:
 case 1:
 case 3:
  return 0;
 case 2:
 case 4:
  return 1;
 default:
  WARN(1, "Unexpected pwm_enable value %d\n", pwm_enable);
  return 0;
 }
}
