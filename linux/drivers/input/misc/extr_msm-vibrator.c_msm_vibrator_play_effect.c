
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_vibrator {scalar_t__ magnitude; int worker; int mutex; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ strong_magnitude; scalar_t__ weak_magnitude; } ;
struct TYPE_4__ {TYPE_1__ rumble; } ;
struct ff_effect {TYPE_2__ u; } ;


 struct msm_vibrator* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static int msm_vibrator_play_effect(struct input_dev *dev, void *data,
        struct ff_effect *effect)
{
 struct msm_vibrator *vibrator = input_get_drvdata(dev);

 mutex_lock(&vibrator->mutex);

 if (effect->u.rumble.strong_magnitude > 0)
  vibrator->magnitude = effect->u.rumble.strong_magnitude;
 else
  vibrator->magnitude = effect->u.rumble.weak_magnitude;

 mutex_unlock(&vibrator->mutex);

 schedule_work(&vibrator->worker);

 return 0;
}
