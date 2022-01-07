
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct as3935_state {int work; } ;


 int cancel_delayed_work_sync (int *) ;
 struct as3935_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static void as3935_stop_work(void *data)
{
 struct iio_dev *indio_dev = data;
 struct as3935_state *st = iio_priv(indio_dev);

 cancel_delayed_work_sync(&st->work);
}
