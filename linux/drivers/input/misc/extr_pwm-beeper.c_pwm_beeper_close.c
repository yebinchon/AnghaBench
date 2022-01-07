
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_beeper {int dummy; } ;
struct input_dev {int dummy; } ;


 struct pwm_beeper* input_get_drvdata (struct input_dev*) ;
 int pwm_beeper_stop (struct pwm_beeper*) ;

__attribute__((used)) static void pwm_beeper_close(struct input_dev *input)
{
 struct pwm_beeper *beeper = input_get_drvdata(input);

 pwm_beeper_stop(beeper);
}
