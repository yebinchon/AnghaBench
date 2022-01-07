
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int iio_pollfunc_store_time ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int itg3200_trigger_handler ;

int itg3200_buffer_configure(struct iio_dev *indio_dev)
{
 return iio_triggered_buffer_setup(indio_dev, &iio_pollfunc_store_time,
  itg3200_trigger_handler, ((void*)0));
}
