
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx9500_data {int * buffer; int mutex; } ;
struct iio_dev {int scan_bytes; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct sx9500_data* iio_priv (struct iio_dev*) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int sx9500_update_scan_mode(struct iio_dev *indio_dev,
       const unsigned long *scan_mask)
{
 struct sx9500_data *data = iio_priv(indio_dev);

 mutex_lock(&data->mutex);
 kfree(data->buffer);
 data->buffer = kzalloc(indio_dev->scan_bytes, GFP_KERNEL);
 mutex_unlock(&data->mutex);

 if (data->buffer == ((void*)0))
  return -ENOMEM;

 return 0;
}
