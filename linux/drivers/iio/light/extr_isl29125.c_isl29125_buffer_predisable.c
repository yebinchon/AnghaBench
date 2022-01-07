
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29125_data {int conf1; int client; } ;
struct iio_dev {int dummy; } ;


 int ISL29125_CONF1 ;
 int ISL29125_MODE_MASK ;
 int ISL29125_MODE_PD ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 struct isl29125_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;

__attribute__((used)) static int isl29125_buffer_predisable(struct iio_dev *indio_dev)
{
 struct isl29125_data *data = iio_priv(indio_dev);
 int ret;

 ret = iio_triggered_buffer_predisable(indio_dev);
 if (ret < 0)
  return ret;

 data->conf1 &= ~ISL29125_MODE_MASK;
 data->conf1 |= ISL29125_MODE_PD;
 return i2c_smbus_write_byte_data(data->client, ISL29125_CONF1,
  data->conf1);
}
