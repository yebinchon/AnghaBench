
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si1145_data {int lock; } ;
struct iio_dev {int * active_scan_mask; } ;


 struct si1145_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si1145_set_chlist (struct iio_dev*,int ) ;

__attribute__((used)) static int si1145_buffer_preenable(struct iio_dev *indio_dev)
{
 struct si1145_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->lock);
 ret = si1145_set_chlist(indio_dev, *indio_dev->active_scan_mask);
 mutex_unlock(&data->lock);

 return ret;
}
