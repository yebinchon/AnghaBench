
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_vibrator {int enabled; int mutex; int clk; int vcc; int enable_gpio; } ;


 int clk_disable (int ) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void msm_vibrator_stop(struct msm_vibrator *vibrator)
{
 mutex_lock(&vibrator->mutex);

 if (vibrator->enabled) {
  gpiod_set_value_cansleep(vibrator->enable_gpio, 0);
  regulator_disable(vibrator->vcc);
  clk_disable(vibrator->clk);
  vibrator->enabled = 0;
 }

 mutex_unlock(&vibrator->mutex);
}
