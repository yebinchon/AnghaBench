
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ads1015_data {int dummy; } ;


 int EBUSY ;
 scalar_t__ ads1015_event_channel_enabled (struct ads1015_data*) ;
 int ads1015_set_power_state (struct ads1015_data*,int) ;
 struct ads1015_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ads1015_buffer_preenable(struct iio_dev *indio_dev)
{
 struct ads1015_data *data = iio_priv(indio_dev);


 if (ads1015_event_channel_enabled(data))
  return -EBUSY;

 return ads1015_set_power_state(iio_priv(indio_dev), 1);
}
