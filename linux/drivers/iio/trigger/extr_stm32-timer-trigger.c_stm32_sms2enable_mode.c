
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int stm32_sms2enable_mode(int mode)
{
 switch (mode) {
 case 0:
  return 0;
 case 5:
  return 1;
 case 6:
  return 2;
 }

 return -EINVAL;
}
