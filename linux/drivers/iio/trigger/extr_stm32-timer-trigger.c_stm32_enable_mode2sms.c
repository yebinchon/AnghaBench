
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int stm32_enable_mode2sms(int mode)
{
 switch (mode) {
 case 0:
  return 0;
 case 1:
  return 5;
 case 2:
  return 6;
 }

 return -EINVAL;
}
