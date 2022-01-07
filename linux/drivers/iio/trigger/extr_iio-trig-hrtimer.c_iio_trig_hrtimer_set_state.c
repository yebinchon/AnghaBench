
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_hrtimer_info {int timer; int period; } ;


 int HRTIMER_MODE_REL ;
 int hrtimer_cancel (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 struct iio_hrtimer_info* iio_trigger_get_drvdata (struct iio_trigger*) ;

__attribute__((used)) static int iio_trig_hrtimer_set_state(struct iio_trigger *trig, bool state)
{
 struct iio_hrtimer_info *trig_info;

 trig_info = iio_trigger_get_drvdata(trig);

 if (state)
  hrtimer_start(&trig_info->timer, trig_info->period,
         HRTIMER_MODE_REL);
 else
  hrtimer_cancel(&trig_info->timer);

 return 0;
}
