
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct bmc150_accel_data {int dummy; } ;


 int bmc150_accel_set_power_state (struct bmc150_accel_data*,int) ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int bmc150_accel_buffer_postdisable(struct iio_dev *indio_dev)
{
 struct bmc150_accel_data *data = iio_priv(indio_dev);

 return bmc150_accel_set_power_state(data, 0);
}
