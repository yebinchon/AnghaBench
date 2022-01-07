
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmx61_data {int dummy; } ;
struct iio_dev {int dummy; } ;


 scalar_t__ iio_priv (struct iio_dev*) ;

__attribute__((used)) static struct kmx61_data *kmx61_get_data(struct iio_dev *indio_dev)
{
 return *(struct kmx61_data **)iio_priv(indio_dev);
}
