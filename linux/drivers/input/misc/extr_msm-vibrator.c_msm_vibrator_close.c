
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_vibrator {int worker; } ;
struct input_dev {int dummy; } ;


 int cancel_work_sync (int *) ;
 struct msm_vibrator* input_get_drvdata (struct input_dev*) ;
 int msm_vibrator_stop (struct msm_vibrator*) ;

__attribute__((used)) static void msm_vibrator_close(struct input_dev *input)
{
 struct msm_vibrator *vibrator = input_get_drvdata(input);

 cancel_work_sync(&vibrator->worker);
 msm_vibrator_stop(vibrator);
}
