
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dev; int id; int list; } ;


 int device_del (int *) ;
 int ida_simple_remove (int *,int ) ;
 int iio_trigger_ida ;
 int iio_trigger_list_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void iio_trigger_unregister(struct iio_trigger *trig_info)
{
 mutex_lock(&iio_trigger_list_lock);
 list_del(&trig_info->list);
 mutex_unlock(&iio_trigger_list_lock);

 ida_simple_remove(&iio_trigger_ida, trig_info->id);

 device_del(&trig_info->dev);
}
