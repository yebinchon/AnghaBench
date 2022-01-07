
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct hmc5843_data {int dummy; } ;


 int hmc5843_set_meas_conf (struct hmc5843_data*,unsigned int) ;
 struct hmc5843_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static
int hmc5843_set_measurement_configuration(struct iio_dev *indio_dev,
       const struct iio_chan_spec *chan,
       unsigned int meas_conf)
{
 struct hmc5843_data *data = iio_priv(indio_dev);

 return hmc5843_set_meas_conf(data, meas_conf);
}
