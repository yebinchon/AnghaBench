
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_sw_trigger {int trigger; } ;
struct iio_hrtimer_info {int timer; } ;


 int hrtimer_cancel (int *) ;
 int iio_trigger_free (int ) ;
 struct iio_hrtimer_info* iio_trigger_get_drvdata (int ) ;
 int iio_trigger_unregister (int ) ;
 int kfree (struct iio_hrtimer_info*) ;

__attribute__((used)) static int iio_trig_hrtimer_remove(struct iio_sw_trigger *swt)
{
 struct iio_hrtimer_info *trig_info;

 trig_info = iio_trigger_get_drvdata(swt->trigger);

 iio_trigger_unregister(swt->trigger);


 hrtimer_cancel(&trig_info->timer);
 iio_trigger_free(swt->trigger);
 kfree(trig_info);

 return 0;
}
