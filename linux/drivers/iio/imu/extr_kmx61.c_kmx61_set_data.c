
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmx61_data {int dummy; } ;
struct iio_dev {int dummy; } ;


 struct kmx61_data** iio_priv (struct iio_dev*) ;

__attribute__((used)) static void kmx61_set_data(struct iio_dev *indio_dev, struct kmx61_data *data)
{
 struct kmx61_data **priv = iio_priv(indio_dev);

 *priv = data;
}
