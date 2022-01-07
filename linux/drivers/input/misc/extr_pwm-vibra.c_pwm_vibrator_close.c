
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_vibrator {int play_work; } ;
struct input_dev {int dummy; } ;


 int cancel_work_sync (int *) ;
 struct pwm_vibrator* input_get_drvdata (struct input_dev*) ;
 int pwm_vibrator_stop (struct pwm_vibrator*) ;

__attribute__((used)) static void pwm_vibrator_close(struct input_dev *input)
{
 struct pwm_vibrator *vibrator = input_get_drvdata(input);

 cancel_work_sync(&vibrator->play_work);
 pwm_vibrator_stop(vibrator);
}
