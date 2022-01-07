
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_beeper {int bell_frequency; int work; int suspended; scalar_t__ period; } ;
struct input_dev {int dummy; } ;


 int EINVAL ;
 unsigned int EV_SND ;
 scalar_t__ HZ_TO_NANOSECONDS (int) ;


 struct pwm_beeper* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int pwm_beeper_event(struct input_dev *input,
       unsigned int type, unsigned int code, int value)
{
 struct pwm_beeper *beeper = input_get_drvdata(input);

 if (type != EV_SND || value < 0)
  return -EINVAL;

 switch (code) {
 case 129:
  value = value ? beeper->bell_frequency : 0;
  break;
 case 128:
  break;
 default:
  return -EINVAL;
 }

 if (value == 0)
  beeper->period = 0;
 else
  beeper->period = HZ_TO_NANOSECONDS(value);

 if (!beeper->suspended)
  schedule_work(&beeper->work);

 return 0;
}
