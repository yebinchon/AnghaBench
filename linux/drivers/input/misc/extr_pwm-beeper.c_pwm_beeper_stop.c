
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_beeper {int work; } ;


 int cancel_work_sync (int *) ;
 int pwm_beeper_off (struct pwm_beeper*) ;

__attribute__((used)) static void pwm_beeper_stop(struct pwm_beeper *beeper)
{
 cancel_work_sync(&beeper->work);
 pwm_beeper_off(beeper);
}
