
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int ads1015_set_power_state (int ,int) ;
 int iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ads1015_buffer_postdisable(struct iio_dev *indio_dev)
{
 return ads1015_set_power_state(iio_priv(indio_dev), 0);
}
