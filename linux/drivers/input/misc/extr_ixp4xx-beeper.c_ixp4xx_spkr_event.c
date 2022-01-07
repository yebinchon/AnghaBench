
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 unsigned int EV_SND ;


 scalar_t__ input_get_drvdata (struct input_dev*) ;
 int ixp4xx_spkr_control (unsigned int,unsigned int) ;
 int ixp4xx_timer_freq ;

__attribute__((used)) static int ixp4xx_spkr_event(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
 unsigned int pin = (unsigned int) input_get_drvdata(dev);
 unsigned int count = 0;

 if (type != EV_SND)
  return -1;

 switch (code) {
  case 129:
   if (value)
    value = 1000;
  case 128:
   break;
  default:
   return -1;
 }

 if (value > 20 && value < 32767)
  count = (ixp4xx_timer_freq / (value * 4)) - 1;

 ixp4xx_spkr_control(pin, count);

 return 0;
}
