
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 unsigned int EV_SND ;


 int mach_beep (unsigned int,int) ;

__attribute__((used)) static int m68kspkr_event(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
 unsigned int count = 0;

 if (type != EV_SND)
  return -1;

 switch (code) {
  case 129: if (value) value = 1000;
  case 128: break;
  default: return -1;
 }

 if (value > 20 && value < 32767)
  count = 1193182 / value;

 mach_beep(count, -1);

 return 0;
}
